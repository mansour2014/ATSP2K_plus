*
*     ------------------------------------------------------------------
*	C F P P
*     ------------------------------------------------------------------
*
      SUBROUTINE CFPP(N,LI,ISI,LJ,ISJ,COEFP)
      IMPLICIT DOUBLE PRECISION(A-H,O-Z)
*
*     THIS SUBROUTINE EVALUATES THE COEFFICIENTS OF FRACTIONAL PARENTAGE
*     FOR EQUIVALENT P SHELL ELECTRONS FROM TABLES GIVEN IN J.C.SLATER
*     QUANTUM THEORY OF ATOMIC STRUCTURE,VOLUME2,P350(1960)
*     IN THE SUBROUTINE LIST N,THE NO. OF ELECTRONS,L THE ANGULAR
*     MOMENTUM QUANTUM NO.,(2S+1) THE SPIN QUANTUM NO. OF BOTH THE STATE
*     IN QUESTION AND ITS PARENT STATE ARE INPUT PARAMETERS.THE RESULT
*     IS OUTPUT AS COEFP
*
      COMMON/INFORM/IREAD,IWRITE,IOUT,ISC(8)
      DIMENSION IL(3,3),IS(3,3),ITAB1(3,1),ITAB2(3,3),NORM1(3),NORM2(3)
      DATA IS(1,2),IS(1,3)/0,0/
      DATA IL(1,2),IL(1,3)/0,0/
*
*
*     SET UP P SHELL PARAMETERS AND TABLES
*
      DATA IL(1,1),IL(2,1),IL(2,2),IL(2,3),IL(3,1),IL(3,2),IL(3,3)/1,1,2
     :     ,0,0,2,1/
      DATA IS(1,1),IS(2,1),IS(2,2),IS(2,3),IS(3,1),IS(3,2),IS(3,3)/2,3,1
     :     ,1,4,2,2/
      DATA ITAB1(1,1),ITAB1(2,1),ITAB1(3,1)/1,1,1/
      DATA ITAB2(1,1),ITAB2(1,2),ITAB2(1,3),ITAB2(2,1),ITAB2(2,2),ITAB2(
     :     2,3),ITAB2(3,1),ITAB2(3,2),ITAB2(3,3)/1,0,0,1,-1,0,-9,-5,4/
      DATA NORM1(1),NORM1(2),NORM1(3)/1,1,1/
      DATA NORM2(1),NORM2(2),NORM2(3)/1,2,18/
*
*     TEST IF N IS IN THE FIRST HALF OF SHELL
*
99    IF(N-4) 40,103,103
*
*     TEST IF STATE IN QUESTION IS ALLOWED
*     IF IT IS, IDENTIFY THE ROW OF THE TABLE BY J1
*
40    J = 0
101   J = J+1
      IF(J-4) 41,8,8
41    IF(IL(N,J)-LI) 101,42,101
42    IF(IS(N,J)-ISI) 101,43,101
43    J1 = J
*
*     TEST IF PARENT STATE IS ALLOWED
*     IF IT IS, IDENTIFY THE COLUMN OF THE TABLE BY J2
*
      IF(N-1) 44,70,44
70    IF(LJ) 8,71,8
71    IF(ISJ-1) 8,1,8
44    J = 0
102   J = J+1
      IF(J-4) 45,8,8
45    IF(IL(N-1,J)-LJ) 102,46,102
46    IF(IS(N-1,J)-ISJ) 102,47,102
47    J2 = J
      GO TO 100
*
*     SIMILAR SETTING OF J1 AND J2 IF N IS IN SECOND HALF OF SHELL
*
103   M =6-N
      IF(M) 72,73,72
73    IF(LI) 8,74,8
74    IF(ISI-1) 8,75,8
72    J = 0
104   J = J+1
      IF(J-4) 48,8,8
48    IF(IL(M,J)-LI) 104,49,104
49    IF(IS(M,J)-ISI) 104,50,104
50    J1 = J
75    J = 0
105   J = J+1
      IF(J-4) 51,8,8
51    IF(IL(M+1,J)-LJ) 105,52,105
52    IF(IS(M+1,J)-ISJ) 105,53,105
53    J2 = J
*
*
*     IDENTIFY THE F.P.C AS A UNIQUE ELEMENT OF ITABN(J1,J2)
*
100   GO TO (1,2,3,4,4,1),N
1     COEFP = 1.D0
      GO TO 10
2     COEFP = ITAB1(J1,J2)
      IF(COEFP) 54,10,31
54    COEFP = -DSQRT(-COEFP/NORM1(J1))
      GO TO 10
31    COEFP = DSQRT(COEFP/NORM1(J1))
      GO TO 10
3     COEFP = ITAB2(J1,J2)
      IF(COEFP) 55,10,32
55    COEFP = -DSQRT(-COEFP/NORM2(J1))
      GO TO 10
32    COEFP =DSQRT(COEFP/NORM2(J1))
      GO TO 10
*
*     USE RECURRENCE RELATION EQUATION (19) OF RACAH FOR SECOND HALF OF
*     SHELL
*
4     ISIGN = (-1)**((ISI+ISJ-5)/2+LI+LJ)
      FACTOR=DFLOAT((7-N)*ISJ*(2*LJ+1))/DFLOAT(N*ISI*(2*LI+1))
      IF(N-5) 56,5,8
56    COEFP = ITAB2(J2,J1)
      IF(COEFP) 57,10,33
57    COEFP = -DSQRT(-COEFP/NORM2(J2))
      GO TO 34
33    COEFP = DSQRT(COEFP/NORM2(J2))
34    COEFP = COEFP * ISIGN * DSQRT(FACTOR)
      IF(LJ-1) 35,10,35
35    COEFP = -COEFP
      GO TO 10
5     COEFP = ITAB1(J2,J1)
      IF(COEFP) 58,10,36
58    COEFP = -DSQRT(-COEFP/NORM1(J2))
      GO TO 37
36    COEFP = DSQRT(COEFP/NORM1(J2))
37    COEFP = COEFP * ISIGN * DSQRT(FACTOR)
      GO TO 10
*
*     AN UNALLOWED STATE OR AN UNALLOWED PARENT
*
8     WRITE(IWRITE,8888)
 8888 FORMAT(' ERROR IN SUBROUTINE CFPP - THE STATE OR IT''S PARENT IS N
     :OT ALLOWED')
      CALL EXIT
10    CONTINUE
      RETURN
      END
