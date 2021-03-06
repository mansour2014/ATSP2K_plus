!
!     -----------------------------------------------------------------
!      F R M A 0 5
!     -----------------------------------------------------------------
!
!      JT7 = 29 -- 33                                              *
!
      SUBROUTINE FRMA05(J1, J2, ISKA, IVAR) 
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
      INTEGER , DIMENSION(35) :: IS29A 
      INTEGER , DIMENSION(18) :: IS29B 
      INTEGER , DIMENSION(30) :: IS30A 
      INTEGER , DIMENSION(24) :: IS30B 
      INTEGER , DIMENSION(62) :: IS31A 
      INTEGER , DIMENSION(5) :: IS31B 
      INTEGER , DIMENSION(62) :: IS32A 
      INTEGER , DIMENSION(5) :: IS32B 
      INTEGER , DIMENSION(36) :: IS33A 
      INTEGER , DIMENSION(22) :: IS33B 
      INTEGER :: I2 
!-----------------------------------------------
!
      DATA IS29A/ -64414350, 0, -14639625, 2*0, 1486485, 2*0, 82557090, 3*0, &
         15280650, 3*0, 2395575, 12113920, 3*0, 10540530, 5*0, -243243, &
         -28863120, 2*0, 57817760, 2*0, -10007712/  
      DATA IS29B/ -155357433, 0, 104195520, 0, -699824312, -3471160, 4*0, &
         442041600, -234834600, 2*0, -28755405, 0, -508725000, 112432320/  
      DATA IS30A/ 24640, 450560, 21870, -2095632, -11907, 65520, 1198080, 24057&
         , 2*0, -87318, 0, -142688, -2609152, -119070, 134946, 0, 1940400, &
         -72765, 0, -158400, -194400, -316800, 133650, 105840, -155232, -421200&
         , -213840, -842400, 147015/  
      DATA IS30B/ 776160, 3*0, -533610, 5*0, 917280, 0, 1834560, 3*0, 1058400, &
         0, -727650, 3*0, -1199520, 824670/  
      DATA IS31A/ -229028800, -102245000, -90347400, 2*0, 230630400, 102960000&
         , 37635840, 0, 178378200, -113299560, 0, 16016000, 7150000, 258746400&
         , 60588000, 4*0, -58893120, 128494080, -7361640, 4563000, 2*0, &
         59304960, -53526528, 7413120, -1900800, 14742000, 80720640, -123603480&
         , -68108040, -48432384, 74162088, -149688, 4*0, 158558400, 161137152, &
         118552896, 0, 1981980, 5722200, 2*0, -181534122, -19049877, -9267885, &
         4118400, -49420800, 514800, 75675600, 155860848, -6301152, -367994880&
         , -51701760, -13068000, 79168320/  
      DATA IS31B/ 4220964, -178200, -2752640, -97750, 4813992/  
      DATA IS32A/ -229028800, 65436800, -62741250, 0, -307432125, -129729600, &
         37065600, 5896935, 2*0, 389001690, 0, -196196000, 56056000, 727650, &
         185550750, 2*0, -30432675, 143095680, 58893120, -22308000, 0, -6210750&
         , -109309200, 0, 33359040, 2096688, 0, 583737, 67092480, 20180160, &
         2522520, 7567560, 485669184, 60708648, 8798328, 5*0, 138311712, &
         -127497216, 2*0, 38507238, 2*0, -15937152, 135465792, 517440, 50450400&
         , -269068800, 0, -33633600, 4036032, 137225088, 258720, -281487360, &
         72030, -35185920/  
      DATA IS32B/ 1984512, -1584, 344080, 95795, -1069776/  
      DATA IS33A/ -511225, 139425, 3*0, 514800, -58080, 0, 275275, 174845, 2*0&
         , 35750, -399300, -93500, 6*0, 102245, 205335, 4*0, -102960, -85536, &
         22750, 0, 315315, -105105, 0, -189189, -231/  
      DATA IS33B/ 136756620, 142139448, 2*0, 255629682, -16227673, -7894865, 2*&
         0, -3946800, -106563600, 132770352, -5367648, 2*0, -324609120, &
         -111481920, 112559040, -4752000, 0, -76010400, 128373120/  
!
      SELECT CASE (J1)  
      CASE (29)  
         IF (J2 < 123) RETURN  
         IF (J2 < 158) THEN 
            I2 = J2 - 122 
            ISKA = IS29A(I2) 
            IVAR = 990990 
         ELSE IF (J2 < 185) THEN 
            IF (J2 < 167) RETURN  
            I2 = J2 - 166 
            ISKA = IS29B(I2) 
            IVAR = 11396385 
         ENDIF 
      CASE (30)  
         IF (J2 < 121) RETURN  
         IVAR = 10584 
         IF (J2 < 151) THEN 
            I2 = J2 - 120 
            ISKA = IS30A(I2) 
         ELSE IF (J2 < 187) THEN 
            IF (J2 < 163) RETURN  
            I2 = J2 - 162 
            ISKA = IS30B(I2) 
         ENDIF 
      CASE (31)  
         IF (J2 < 121) RETURN  
         IF (J2 < 183) THEN 
            I2 = J2 - 120 
            ISKA = IS31A(I2) 
            IVAR = 2162160 
         ELSE IF (J2 < 188) THEN 
            IF (J2 < 183) RETURN  
            I2 = J2 - 182 
            ISKA = IS31B(I2) 
            IVAR = 69069 
         ENDIF 
      CASE (32)  
         IF (J2 < 121) RETURN  
         IF (J2 < 183) THEN 
            I2 = J2 - 120 
            ISKA = IS32A(I2) 
            IVAR = 2522520 
         ELSE IF (J2 < 188) THEN 
            IF (J2 < 183) RETURN  
            I2 = J2 - 182 
            ISKA = IS32B(I2) 
            IVAR = 13156 
         ENDIF 
      CASE (33)  
         IF (J2 < 122) RETURN  
         IF (J2 < 158) THEN 
            I2 = J2 - 121 
            ISKA = IS33A(I2) 
            IVAR = 10010 
         ELSE IF (J2 < 188) THEN 
            IF (J2 < 166) RETURN  
            I2 = J2 - 165 
            ISKA = IS33B(I2) 
            IVAR = 5525520 
         ENDIF 
      END SELECT 
      RETURN  
      END SUBROUTINE FRMA05 
