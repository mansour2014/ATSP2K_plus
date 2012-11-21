!
!     -----------------------------------------------------------------
!      F R M A 1 0
!     -----------------------------------------------------------------
!
!      JT7 = 63 -- 69                                              *
!
      SUBROUTINE FRMA10(J1, J2, ISKA, IVAR) 
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
      INTEGER , DIMENSION(34) :: IS63A 
      INTEGER , DIMENSION(25) :: IS63B 
      INTEGER , DIMENSION(29) :: IS64A 
      INTEGER , DIMENSION(12) :: IS64B 
      INTEGER , DIMENSION(40) :: IS65A 
      INTEGER , DIMENSION(27) :: IS65B 
      INTEGER , DIMENSION(37) :: IS66A 
      INTEGER , DIMENSION(33) :: IS66B 
      INTEGER , DIMENSION(40) :: IS67A 
      INTEGER , DIMENSION(29) :: IS67B 
      INTEGER , DIMENSION(37) :: IS68A 
      INTEGER , DIMENSION(33) :: IS68B 
      INTEGER :: I2 
!-----------------------------------------------
!
      DATA IS63A/ -48400, 105600, 2*0, -129360, 0, -11520, 171600, 6*0, 235200&
         , 2*0, -243936, -10164, 23100, 66528, 2772, 0, 300300, 8*0, 50960, &
         152880/  
      DATA IS63B/ 135520, -605, -35200, 43120, 32256, -144, -57200, 6*0, -75075&
         , -36400, 0, -215600, 4*0, -142688, -49280, 637, -38675/  
      DATA IS64A/ 8064, 4*0, 1575, 2*0, -1575, 2*0, 2835, 9*0, 216, 2*0, 792, 2&
         *0, 270, 990/  
      DATA IS64B/ 2835, 3*0, -1120, 3*0, -2016, 0, -275, -495/  
      DATA IS65A/ 7375872, -3386880, 10541520, -528000, 0, -6021120, 646800, 0&
         , 2509056, -858000, 0, -9784320, -262080, 3*0, 2304960, -2352000, &
         -1572480, 0, -6149220, 226380, 0, 1677060, 0, 2942940, 4919376, &
         -1341648, 0, -231000, -1081080, -3003000, -1021020, -924924, -11099088&
         , 1498224, 0, -1528800, 183456, 6237504/  
      DATA IS65B/ -366025, -5132160, 6286896, 0, -87120, -8339760, 1490720, &
         354816, 0, -6773760, 2*0, 1216215, 589680, 0, 3492720, -665280, &
         -8648640, 3*0, 798336, 385385, 626535, 0, -1569568, -4402944/  
      DATA IS66A/ -3363360, 1006720, -624000, 3*0, 2069760, -1497600, 384000, &
         -61740, -172480, -652190, -145530, 611520, 2312310, 92610, 2*0, 960960&
         , 2*0, 4225760, -73920, 2*0, 784000, 3633630, 20790, -279510, 19635, &
         -91875, 0, -940800, 156800, -3557400, -172872, 29988/  
      DATA IS66B/ 14887719, 133989471, 0, 171645760, 284385816, 2*0, -255340800&
         , -175006656, 10922912, -16248960, 19141353, -52783731, 5220369, &
         -112949802, 2*0, -357305256, 0, -82945863, 6380451, 267978942, 3*0, &
         26734400, 2*0, 1701280, 81205740, 51043608, 106652700, -147563451/  
      DATA IS67A/ -28123200, -118820520, 0, 13749120, 0, -4999680, 77338800, 2*&
         0, 22342320, 0, -8124480, -217620, 3*0, 62496000, -1953000, -1305720, &
         2*0, -8838720, 3*0, -114903360, 3*0, 276210, 89768250, 3590730, &
         84781125, 76801725, 0, 40622400, 0, -1269450, 152334, 5179356/  
      DATA IS67B/ 4583040, 25779600, 2*0, 7447440, 2*0, 32183580, 3906000, &
         -15604160, 21101080, 51068160, 24760320, 0, -20623680, -552420, &
         -7181460, 3*0, -66290400, 0, 26307840, 2*0, 2538900, 0, 87867780, &
         27567540/  
      DATA IS68A/ 44684640, 0, -16248960, 3*0, -27498240, 0, 9999360, &
         -132597540, 185613120, -5800410, 48336750, -8124480, 253890, 70533990&
         , 2*0, 114903360, 2*0, 92806560, -8838720, 2*0, -33747840, -3590730, &
         13534290, 276210, 12782385, -59810625, 0, 12499200, 0, -390600, &
         210408408, -398412/  
      DATA IS68B/ 11600820, -63160020, 2*0, 14894880, 3*0, -9166080, 2*0, &
         -34393260, -507780, 21219500, 40579000, -3928320, 171893760, 30935520&
         , 0, 7181460, -552420, 64449000, 4*0, -99160320, 2*0, 781200, 39774240&
         , 2412240, 2120580/  
!
      SELECT CASE (J1)  
      CASE (63)  
         IF (J2 < 141) RETURN  
         IVAR = 2464 
         IF (J2 < 175) THEN 
            I2 = J2 - 140 
            ISKA = IS63A(I2) 
         ELSE IF (J2 < 221) THEN 
            IF (J2 < 196) RETURN  
            I2 = J2 - 195 
            ISKA = IS63B(I2) 
         ENDIF 
      CASE (64)  
         IVAR = 54 
         IF (J2 < 138) RETURN  
         IF (J2 < 167) THEN 
            I2 = J2 - 137 
            ISKA = IS64A(I2) 
         ELSE IF (J2 == 175) THEN 
            ISKA = 4095 
         ELSE IF (J2 < 205) THEN 
            IF (J2 < 193) RETURN  
            I2 = J2 - 192 
            ISKA = IS64B(I2) 
         ELSE IF (J2 == 219) THEN 
            ISKA = -2912 
         ELSE IF (J2 == 221) THEN 
            ISKA = 972 
         ELSE IF (J2 == 222) THEN 
            ISKA = -715 
         ENDIF 
      CASE (65)  
         IF (J2 < 139) RETURN  
         IVAR = 243936 
         IF (J2 < 179) THEN 
            I2 = J2 - 138 
            ISKA = IS65A(I2) 
         ELSE IF (J2 < 224) THEN 
            IF (J2 < 197) RETURN  
            I2 = J2 - 196 
            ISKA = IS65B(I2) 
         ENDIF 
      CASE (66)  
         IF (J2 < 142) RETURN  
         IF (J2 < 179) THEN 
            I2 = J2 - 141 
            ISKA = IS66A(I2) 
            IVAR = 73920 
         ELSE IF (J2 < 227) THEN 
            IF (J2 < 194) RETURN  
            I2 = J2 - 193 
            ISKA = IS66B(I2) 
            IVAR = 11343024 
         ENDIF 
      CASE (67)  
         IF (J2 < 139) RETURN  
         IVAR = 2025540 
         IF (J2 < 179) THEN 
            I2 = J2 - 138 
            ISKA = IS67A(I2) 
         ELSE IF (J2 < 227) THEN 
            IF (J2 < 198) RETURN  
            I2 = J2 - 197 
            ISKA = IS67B(I2) 
         ENDIF 
      CASE (68)  
         IF (J2 < 142) RETURN  
         IVAR = 2946240 
         IF (J2 < 179) THEN 
            I2 = J2 - 141 
            ISKA = IS68A(I2) 
         ELSE IF (J2 < 227) THEN 
            IF (J2 < 194) RETURN  
            I2 = J2 - 193 
            ISKA = IS68B(I2) 
         ENDIF 
      CASE (69)  
         IF (J2 < 143) RETURN  
         IF (J2 > 222) RETURN  
         IVAR = 6 
         SELECT CASE (J2)  
         CASE (143)  
            ISKA = 35 
         CASE (146)  
            ISKA = 315 
         CASE (149)  
            ISKA = 63 
         CASE (165)  
            ISKA = -54 
         CASE (166)  
            ISKA = -198 
         CASE (175)  
            ISKA = 91 
         CASE (193)  
            ISKA = 63 
         CASE (203)  
            ISKA = 55 
         CASE (204)  
            ISKA = 99 
         CASE (221)  
            ISKA = 60 
         CASE (222)  
            ISKA = 143 
         END SELECT 
      END SELECT 
      RETURN  
      END SUBROUTINE FRMA10 