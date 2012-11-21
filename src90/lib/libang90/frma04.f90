!
!     -----------------------------------------------------------------
!      F R M A 0 4
!     -----------------------------------------------------------------
!
!      JT7 = 24 -- 28                                              *
!
      SUBROUTINE FRMA04(J1, J2, ISKA, IVAR) 
!...Translated by Pacific-Sierra Research 77to90  4.3E  10:10:49  11/16/01  
!...Switches:                     
      IMPLICIT NONE
!-----------------------------------------------
!   D u m m y   A r g u m e n t s
!-----------------------------------------------
      INTEGER , INTENT(IN) :: J1 
      INTEGER , INTENT(IN) :: J2 
      INTEGER , INTENT(OUT) :: ISKA 
      INTEGER , INTENT(OUT) :: IVAR 
!-----------------------------------------------
!   L o c a l   V a r i a b l e s
!-----------------------------------------------
      INTEGER , DIMENSION(61) :: IS24 
      INTEGER , DIMENSION(47) :: IS25A 
      INTEGER , DIMENSION(17) :: IS25B 
      INTEGER , DIMENSION(64) :: IS26 
      INTEGER , DIMENSION(35) :: IS27A 
      INTEGER , DIMENSION(18) :: IS27B 
      INTEGER , DIMENSION(36) :: IS28A 
      INTEGER , DIMENSION(14) :: IS28B 
      INTEGER , DIMENSION(4) :: IS28C 
      INTEGER :: I2 
!-----------------------------------------------
!
      DATA IS24/ -127050, 580800, -158400, -2376990, -70560, 78750, -360000, &
         -617760, 609840, -1201200, -517440, 0, -133770, 611520, 705600, 2*0, &
         -792330, 155232, 0, -1049070, -126720, 464640, 348480, -56448, 0, &
         650250, -494208, -288000, 1359072, 0, 305760, 2*0, 42336, 3*0, -304920&
         , -110880, 0, 600600, -413952, -199584, -243936, 480480, 1138368, 5*0&
         , -1104558, 733824, 489216, 3*0, 564480, -599760, -1552320/  
      DATA IS25A/ -15615600, -6971250, -147232800, 0, 409909500, -749548800, &
         -334620000, 449343180, 263513250, 133783650, -102453120, 0, -294294000&
         , -131381250, 139708800, 3*0, -20702500, 64923040, -4015440, 209397760&
         , -501930, 7436000, -582982400, 0, -192741120, -639065856, -24092640, &
         -22694100, -73573500, -107627520, 164804640, -54934880, -69957888, &
         107123016, -95351256, 0, 234234000, -103062960, 0, 118918800, &
         145711104, -4892272, 2927925, 1486485, 5174400/  
      DATA IS25B/ 296306010, -22792770, 14065282, 40072417, 632308985, &
         -142084800, 526240000, -17760600, -805805000, 3867864, 131507376, &
         -373063680, 396380160, -13248000, -606957120, 45581760, 931392000/  
      DATA IS26/ -64287300, 18367800, 31308750, 0, 55786500, -6375600, 1821600&
         , -19536660, 2*0, 36819090, 0, 34534500, -9867000, 36887400, 3*0, &
         5522300, 18032000, 16531020, 11132000, 0, 3099250, 19835200, 0, &
         1639440, -6946368, 0, -1933932, 1381380, 38678640, 4834830, -1611610, &
         -29157744, -3644718, -11189178, 2*0, 14026320, 2*0, 13091232, &
         -112522256, 2*0, 3644718, 1753290, 22792770, -14065282, -40072417, &
         3037265, -8880300, -5262400, 0, -657800, -49335000, -16773900, &
         13115520, 24773760, 3651480, 3096720, 39302640, -3041280/  
      DATA IS27A/ 696960, -2970, 0, -1323, 0, -432000, -11583, -731808, 1441440&
         , -9702, 2*0, 733824, 13230, 3*0, -8085, 3*0, 871200, -18150, 0, &
         -845152, 2*0, -540000, -70785, 2*0, -509600, 2*0, -70560/  
      DATA IS27B/ 203280, -400400, -59290, 184800, 0, 332640, 4*0, 917280, &
         -1223040, 4*0, 80850, 999600/  
      DATA IS28A/ -11293425, 73616400, 0, -204954750, 0, -542084400, -224671590&
         , 131756625, 66891825, 51226560, 2*0, -212837625, -69854400, 3*0, &
         -301842450, 32461520, 2*0, 2258685, 108416880, 4*0, 108416880, &
         -330879978, -36786750, 0, -136216080, -27467440, 0, -88540452, &
         -47675628/  
      DATA IS28B/ 12320100, 6254820, 7838208, -13552110, -630630, -643302, &
         1108723, 17494715, 2*0, 4422600, 36855000, 107016, 3638544/  
      DATA IS28C/ -268272, 696762, 31654, 646800/  
!
      SELECT CASE (J1)  
      CASE (24)  
         IF (J2 < 121) RETURN  
         IF (J2 > 181) RETURN  
         I2 = J2 - 120 
         ISKA = IS24(I2) 
         IVAR = 15092 
      CASE (25)  
         IF (J2 < 121) RETURN  
         IF (J2 < 168) THEN 
            I2 = J2 - 120 
            ISKA = IS25A(I2) 
            IVAR = 5885880 
         ELSE IF (J2 < 185) THEN 
            IF (J2 < 168) RETURN  
            I2 = J2 - 167 
            ISKA = IS25B(I2) 
            IVAR = 11051040 
         ENDIF 
      CASE (26)  
         IF (J2 < 121) RETURN  
         IF (J2 > 184) RETURN  
         I2 = J2 - 120 
         ISKA = IS26(I2) 
         IVAR = 584430 
      CASE (27)  
         IF (J2 < 122) RETURN  
         IVAR = 22638 
         IF (J2 < 157) THEN 
            I2 = J2 - 121 
            ISKA = IS27A(I2) 
         ELSE IF (J2 < 183) THEN 
            IF (J2 < 165) RETURN  
            I2 = J2 - 164 
            ISKA = IS27B(I2) 
         ENDIF 
      CASE (28)  
         IF (J2 < 122) RETURN  
         IF (J2 < 158) THEN 
            I2 = J2 - 121 
            ISKA = IS28A(I2) 
            IVAR = 8828820 
         ELSE IF (J2 < 179) THEN 
            IF (J2 < 165) RETURN  
            I2 = J2 - 164 
            ISKA = IS28B(I2) 
            IVAR = 917280 
         ELSE IF (J2 < 185) THEN 
            IF (J2 < 181) RETURN  
            I2 = J2 - 180 
            ISKA = IS28C(I2) 
            IVAR = 23023 
         ENDIF 
      END SELECT 
      RETURN  
      END SUBROUTINE FRMA04 