!
!     -----------------------------------------------------------------
!      F R M A 1 4
!     -----------------------------------------------------------------
!
!      JT7 = 86 -- 90                                              *
!
      SUBROUTINE FRMA14(J1, J2, ISKA, IVAR) 
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
      INTEGER , DIMENSION(94) :: IS86 
      INTEGER , DIMENSION(49) :: IS87A 
      INTEGER , DIMENSION(40) :: IS87B 
      INTEGER , DIMENSION(49) :: IS88A 
      INTEGER , DIMENSION(40) :: IS88B 
      INTEGER , DIMENSION(19) :: IS89A 
      INTEGER , DIMENSION(66) :: IS89B 
      INTEGER , DIMENSION(7) :: IS90A 
      INTEGER , DIMENSION(45) :: IS90B 
      INTEGER , DIMENSION(11) :: IS90C 
      INTEGER :: I2 
!-----------------------------------------------
!
      DATA IS86/ -124215000, 17886960, 0, -136636500, 235572480, -25350000, &
         -669518850, 2*0, 12842214, 133436160, 2382600, 8386560, -10090080, &
         -38153115, 945945, -242834592, -918218301, 1099791, 5*0, 847159236, &
         63748608, 2*0, 157172400, 2*0, 241049424, 16933224, 64680, 0, &
         134534400, 201801600, 508708200, 504504, 17153136, 1584660, 140743680&
         , 294000, 532187040, 15504, -9, 404088300, 74970000, -25639740, 6*0, 2&
         *5675670, 0, 261747200, 75289500, 368918550, 0, 148262400, -7076322, &
         16656640, 9434880, -51891840, 136594458, 13509342, -136835244, 2*0, &
         -466802028, 2*0, -35858592, -122943744, 3*0, 224224000, 2*0, 14268800&
         , -75675600, 0, 1197, 4131, -873180, -79168320, 133596540, -222660900&
         , 0, -460165860/  
!
      DATA IS87A/ -92510600, 925106000, 0, 915854940, 0, -333038160, 254404150&
         , 2*0, 80144834, 0, -29143576, -243984000, -187867680, 5870865, &
         95890795, -1515465952, 47358311, -604828125, 5*0, 194732076, &
         -1186938368, 2*0, -70811664, 2*0, 37091824, 1336396600, -1012799480, 4&
         *0, 150294144, 584600016, 265543740, -999694080, -96561360, 31240440, &
         -548178120, 11309760, 234303300, -85201200, 951471360/  
      DATA IS87B/ -6474195, -87041955, 2*0, 168329070, 46758075, 2*0, 14730177&
         , 2*0, 236770560, -52225173, 33732743, -6535606, -78923520, -748356864&
         , 35790678, 405140736, 0, -40903632, -249317376, 4*0, 341228160, 5*0, &
         -346305960, 48805470, -34450920, -453720960, 43063650, -213736320, &
         -193536000, 135739800/  
!
      DATA IS88A/ -248496248, 455, 0, -508287780, 0, 184831920, 683364682, 2*0&
         , 71407, 0, -1363588072, -1565316480, 875, -81456375, -1330454125, &
         340596256, -10643633, 1794281643, 5*0, 280919892, -13443584, 2*0, &
         -102152688, 2*0, 420112, -14297, -1817189000, 0, 8112, 0, -215762976, &
         -153630048, 177249072, -363922020, -1669536000, 132335280, 52173000, &
         4845, 102375, -180935964, 65794896, -194652720/  
      DATA IS88B/ 66646125, 896020125, 2*0, -69311970, 93186093, 2*0, 511345527&
         , 3*0, 8708427, 155677753, 568106, -1592398080, -8166144, 38307258, &
         -983913216, 0, -343728, -63376896, 4*0, 828696960, 2*0, 176533344, 0, &
         -903782880, 147902040, -49625730, -42687000, 68868360, -24673086, &
         519073920, -2221560, 1595524392/  
!
      DATA IS89A/ -19874400, -1987440, 2*0, 6543680, -4056000, 4*0, 3706560, &
         381216, -931840, 0, 315315, -105105, 0, 7588581, -122199/  
      DATA IS89B/ 2916, 2*0, -304371144, -287461636, -1098020, 2*0, 856455600, &
         -642341700, -8564556, -291194904, 2*0, 7187040, -671988240, -807448320&
         , 644490, 0, 1832695200, 435265110, 6*0, -96351255, 10705695, 7*0, &
         -636224160, -360378720, -97880640, -1083, 25481907, -258104574, 5*0, &
         608742288, -231901824, 6*0, -545017200, 1284683400, 0, 367447080, &
         115282440, 0, 1343976480, 251995590, 2*0, -867984810/  
!
      DATA IS90A/ 22880, 0, 36855, 34125, 0, -2457, -28227/  
      DATA IS90B/ -9180864, -15414784, -1781120, 3*0, -1210950, -28935426, &
         3903744, 3*0, 7917750, 7994250, 1663335, 2*0, 11032065, 6*0, 2*3955770&
         , 9*0, 9041760, -263718, -8050, -21074900, 5*0, -2040192/  
      DATA IS90C/ -8060, 0, -186732, 350064, 0, 52700, -267189, 2*0, -2499, &
         -406980/  
!
      SELECT CASE (J1)  
      CASE (86)  
         IF (J2 < 139) RETURN  
         IF (J2 < 233) THEN 
            I2 = J2 - 138 
            ISKA = IS86(I2) 
            SELECT CASE (I2)  
            CASE (45)  
               IVAR = 3289 
            CASE (46)  
               IVAR = 2392 
            CASE (87)  
               IVAR = 62 
            CASE (88)  
               IVAR = 682 
            CASE DEFAULT 
               IVAR = 10090080 
            END SELECT 
         ENDIF 
      CASE (87)  
         IF (J2 < 139) RETURN  
         IF (J2 < 188) THEN 
            I2 = J2 - 138 
            ISKA = IS87A(I2) 
            IVAR = 22102080 
         ELSE IF (J2 < 234) THEN 
            IF (J2 < 194) RETURN  
            I2 = J2 - 193 
            ISKA = IS87B(I2) 
            IVAR = 12186720 
         ENDIF 
      CASE (88)  
         IF (J2 < 139) RETURN  
         IF (J2 < 188) THEN 
            I2 = J2 - 138 
            ISKA = IS88A(I2) 
            SELECT CASE (I2)  
            CASE (2)  
               IVAR = 12 
            CASE (10)  
               IVAR = 1248 
            CASE (14)  
               IVAR = 22 
            CASE (33)  
               IVAR = 312 
            CASE (36)  
               IVAR = 77 
            CASE (45)  
               IVAR = 16744 
            CASE (46)  
               IVAR = 1012 
            CASE DEFAULT 
               IVAR = 65537472 
            END SELECT 
         ELSE IF (J2 < 234) THEN 
            IF (J2 < 194) RETURN  
            I2 = J2 - 193 
            ISKA = IS88B(I2) 
            IVAR = 26810784 
         ENDIF 
      CASE (89)  
         IF (J2 < 139) RETURN  
         IF (J2 < 158) THEN 
            I2 = J2 - 138 
            ISKA = IS89A(I2) 
            IVAR = 560560 
         ELSE IF (J2 < 233) THEN 
            IF (J2 < 167) RETURN  
            I2 = J2 - 166 
            ISKA = IS89B(I2) 
            IF (I2 == 1) THEN 
               IVAR = 65 
            ELSE IF (I2 == 40) THEN 
               IVAR = 40 
            ELSE 
               IVAR = 85645560 
            ENDIF 
         ENDIF 
      CASE (90)  
         IF (J2 < 151) RETURN  
         IF (J2 < 158) THEN 
            I2 = J2 - 150 
            ISKA = IS90A(I2) 
            IVAR = 1560 
         ELSE IF (J2 < 215) THEN 
            IF (J2 < 170) RETURN  
            I2 = J2 - 169 
            ISKA = IS90B(I2) 
            IVAR = 753480 
         ELSE IF (J2 < 234) THEN 
            IF (J2 < 223) RETURN  
            I2 = J2 - 222 
            ISKA = IS90C(I2) 
            IVAR = 22568 
         ENDIF 
      END SELECT 
      RETURN  
      END SUBROUTINE FRMA14 
