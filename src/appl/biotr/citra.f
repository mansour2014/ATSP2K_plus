*
      SUBROUTINE CITRA(CIIN,NCSF,NCIV,L,NSHL,T,LBUF,LU,NIN,
     &                 CIOUT,
     &                 SCR,BUF,IBUF,NTESTG)
*
       IMPLICIT DOUBLE PRECISION (A-H,O-Z)
*. Input
      DIMENSION CIIN(NCSF,NCIV),T(NSHL,NSHL)
*. Output
      DIMENSION CIOUT(NCSF,NCIV)
*. Scratch
      DIMENSION SCR(NCSF,NCIV),BUF(LBUF),IBUF(4,LBUF)
*
      IF(NIN .NE. 0 ) THEN
        FACTOR = 1.0D0
        DO 10 IIN = 1, NIN
          FACTOR = FACTOR*T(IIN,IIN)
   10    CONTINUE
        IPOT = 2*(2*L+1)
        FACTOR = FACTOR ** IPOT
        CALL SCALVE(CIIN,FACTOR,NCIV*NCSF)
      END IF
      IF(NIN.EQ.NSHL) CALL COPVEC(CIIN,CIOUT,NCIV*NCSF)
*
      DO 1000 I = NIN+ 1, NSHL
*
       TII  = T(I,I)
       CALL TIINI(CIIN,NCSF,NCIV,I,L,TII,LBUF,LU,
     &            CIOUT,BUF,IBUF,NTESTG)
       CALL COPVEC(CIOUT,SCR,NCIV*NCSF)
*
*. Off diagonal contributions
*
       XNFACI = 1.0D0
       DO 900 N= 1, 2*(2*L+1)
* T ** (N-1) is supposed to be in SCR, copy to CIIN
* and apply S
         CALL COPVEC(SCR,CIIN,NCIV*NCSF)
         JLEI = 1
         CALL TI1TV(CIIN,NCSF,NCIV,I,L,T(1,I),NSHL,JLEI,LBUF,
     &             LU,SCR,BUF,IBUF,NTESTG)
         XNFACI = XNFACI/FLOAT(N)
         CALL VECSUM(CIOUT,CIOUT,SCR,1.0D0,XNFACI,NCIV*NCSF)
  900  CONTINUE
       CALL COPVEC(CIOUT,CIIN,NCIV*NCSF)
*
 1000 CONTINUE
*
      RETURN
      END
