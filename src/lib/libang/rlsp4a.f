*
*     --------------------------------------------------------------
*     R L S P 4 A
*     --------------------------------------------------------------
*                                                                  *
*
      SUBROUTINE RLSP4A(K,JA1,JA2,JA3,K1,K2,K3,IRE,IAT,REC)
      IMPLICIT DOUBLEPRECISION (A-H,O-Z)
      COMMON/CONSTS/ZERO,TENTH,HALF,ONE,TWO,THREE,FOUR,SEVEN,ELEVEN,EPS
      COMMON/MEDEFN/IHSH,NJ(16),LJ(16),NOSH1(16),NOSH2(16),J1QN1(31,3),
     :     J1QN2(31,3),IJFUL(16)
*
      REC=ONE/DSQRT(DBLE(J1QN1(JA1,K)*J1QN1(JA2,K)*J1QN1(JA3,K)))
      ISKR=JA3-JA2
      IF(ISKR.GT.1) THEN
        IAT=0
        CALL DLSA3(K,JA2,JA3,K3,IRE,IAT,RE)
        IF(IAT.EQ.0)RETURN
        REC=RE*REC
      ENDIF
*
      IAT=0
      CALL DLSA4(K,JA1,JA2,K1,K2,K3,IRE,IAT,RE)
      IF(IAT.EQ.0)RETURN
      REC=RE*REC
*
      IF(JA1.EQ.1.AND.JA2.EQ.2)RETURN
*
      IAT=0
      CALL DLSA1(K,JA1,K1,IRE,IAT,RE)
      IF(IAT.EQ.0)RETURN
      REC=RE*REC
*
      ISKR=JA2-JA1
      IF(JA1.EQ.1)ISKR=JA2-1-JA1
      IF(ISKR.LE.1)RETURN
      IAT=0
      CALL DLSA3(K,JA1,JA2,K1,IRE,IAT,RE)
      REC=RE*REC
      RETURN
      END
