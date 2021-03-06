!
!     ------------------------------------------------------------------
!       S E T U P m
!     ------------------------------------------------------------------
!
      SUBROUTINE SETUPM(ISH, J1, J2, JA, JB, NA, NB) 
!-----------------------------------------------
!   M o d u l e s 
!-----------------------------------------------
      USE RED_C 
      use medefn_C
      use ndims_C
      use non30_C
!...Translated by Pacific-Sierra Research 77to90  4.3E  11:13:59  11/17/01  
!...Switches:                     
      IMPLICIT NONE
!-----------------------------------------------
!   D u m m y   A r g u m e n t s
!-----------------------------------------------
      INTEGER , INTENT(IN) :: ISH 
      INTEGER , INTENT(IN) :: J1 
      INTEGER , INTENT(IN) :: J2 
      INTEGER , INTENT(IN) :: JA 
      INTEGER , INTENT(IN) :: JB 
      INTEGER , INTENT(IN) :: NA 
      INTEGER , INTENT(IN) :: NB 
!-----------------------------------------------
!   L o c a l   V a r i a b l e s
!-----------------------------------------------
      INTEGER :: I1, I2HSH, I, IC, JC, NCC, K, JD, I2 
!-----------------------------------------------
!
!
!      COMMON/MEDEFN/IHSH,NJ(16),LJ(16),NOSH(16,2),J1QN(31,3,2),IJFUL(16)
!      POINTER(QNOC,NOCCSH(1)),(QNELCSH,NELCSH(8,1)),
!     :       (QNOCORB,NOCORB(8,1)),(QJ1,J1QNRD(15,1))
!      POINTER(QIAJCMP,IAJCMP(1)),(QLJCOMP,LJCOMP(1)),
!     :       (QNJCOMP,NJCOMP(1)),(QIAJCLD,IAJCLD(1)),
!     :       (QLJCLSD,LJCLSD(1))
!      COMMON /NDIMS/ QNOC,QNELCSH,QNOCORB,QJ1,NCFG
!      COMMON /NON30/ QIAJCMP,QNJCOMP,QLJCOMP,QIAJCLD,QLJCLSD,MAXORB
!
!     Inserts the current subshell i1 into the left and right
!     coupling tree at position ish.
!     j1, j2 : location in the configurations of the shell
!     na, nb : occupied or not: =1 not occupied, =2 occupied
!
      IF (NA == 2) THEN 
         I1 = NOCORB(J1,JA) 
      ELSE 
         I1 = NOCORB(J2,JB) 
      ENDIF 
!
!     This code allows a maximum of 8 open shells but at
!     most two shells may differ in the present case.  IHSH is an
!     upper bound to the number of shells.
!
      I2HSH = IHSH + ISH - 1 
!
! --- FIRST CONSIDER THE L.H.S. (I=1) OF THE MATRIX ELEMENT.  NCC=1
!     MEANS UNOCCUPIED, REPRESENTED BY A DUMMY SINGLET S SHELL, AND THE
!     ADDITIONAL SET OF COUPLING QUANTUM NUMBERS WILL BE THE SAME AS THE
!     LAST SET OF COUPLING QUANTUM NUMBERS ALREADY OBTAINED.
!     NCC=2 MEANS OCCUPIED.  THEN ALL THE NEW QUANTUM NUMBERS (BOTH FOR
!     THE SHELL AND FOR THE COUPLING OF THIS SHELL TO THE RESULTANT OF
!     THE PREVIOUS ONES) ARE DEFINED IN THE CORRESPONDING J1QNRD ARRAY.
!     NOSH - THE NUMBER OF ELECTRONS IN THIS SHELL, IS DEFINED BY THE
!     APPROPRIATE ENTRY IN NELCSH .  THE R.H.S. IS THEN CONSIDERED
!     SIMILARLY (I=2)
!
      I = 1 
   25 CONTINUE 
      IF (I == 1) THEN 
         IC = J1 
         JC = JA 
         NCC = NA 
      ELSE 
         IC = J2 
         JC = JB 
         NCC = NB 
      ENDIF 
      IF (NCC == 1) THEN 
!       .. shell is not occupied
         NOSH(ISH,I) = 0 
         J1QN(ISH,1,I) = 0 
         J1QN(ISH,2,I) = 1 
         J1QN(ISH,3,I) = 1 
         IF (ISH == 2) THEN 
            J1QN(I2HSH,1,I) = 0 
            J1QN(I2HSH,2,I) = J1QN(1,2,I) 
            J1QN(I2HSH,3,I) = J1QN(1,3,I) 
         ELSE IF (ISH > 2) THEN 
            J1QN(I2HSH,:,I) = J1QN(I2HSH-1,:,I) 
         ENDIF 
      ELSE 
!       .. shell is occupied
         NOSH(ISH,I) = NELCSH(IC,JC) 
         JD = J1QNRD(IC,JC) 
         J1QN(ISH,1,I) = MOD(JD,64) 
         JD = JD/64 
         J1QN(ISH,2,I) = MOD(JD,64) 
         J1QN(ISH,3,I) = JD/64 
!
         IF (ISH > 1) THEN 
!
!         .. a resultant coupling is present
!
!     IS THIS THE FIRST OCCUPIED SHELL OF THIS CONFIGURATION, THOUGH NOT
!     THE FIRST OF THE OTHER CONFIGURATION.  IF SO, THE INTERMEDIATE
!     COUPLING FORMED HAS THE SAME  L,S  VALUES AS THIS OCCUPIED SHELL,
!     SINCE WE COUPLE THE SHELL TO A DUMMY SINGLET S.
!
            IF (IC == 1) THEN 
               I2 = 1 
            ELSE 
               I2 = NOCCSH(JC) + IC - 1 
            ENDIF 
            JD = J1QNRD(I2,JC) 
            IF (IC == 1) THEN 
               J1QN(I2HSH,1,I) = 0 
            ELSE 
               J1QN(I2HSH,1,I) = MOD(JD,64) 
            ENDIF 
            JD = JD/64 
            J1QN(I2HSH,2,I) = MOD(JD,64) 
            J1QN(I2HSH,3,I) = JD/64 
         ENDIF 
      ENDIF 
!
      I = I + 1 
      IF (I == 2) GO TO 25 
!
! --- SET THE NJ AND LJ VALUES OF THE OCCUPIED SHELLS
!
      NJ(ISH) = NJCOMP(I1) 
      IJFUL(ISH) = I1 
      LJ(ISH) = LJCOMP(I1) 
      IF (NC /= 0) THEN 
         IF (INDL(NCI1) == I1) KPL = ISH 
         IF (INDR(NCI1) == I1) KPR = ISH 
      ENDIF 
      RETURN  
!
      END SUBROUTINE SETUPM 
