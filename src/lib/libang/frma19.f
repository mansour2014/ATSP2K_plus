*
*     -----------------------------------------------------------------
*      F R M A 1 9
*     -----------------------------------------------------------------
*
*      JT7 = 113 -- 119                                            *
*
      SUBROUTINE FRMA19(J1,J2,ISKA,IVAR)
      DIMENSION IS113A(19),IS113B(19),IS114A(18),IS114B(17),IS115A(17),
     :IS115B(16),IS116A(14),IS116B(12),IS117A(11),IS117B(11),IS118A(8),
     :IS118B(9),IS119A(4),IS119B(5)
*
      DATA IS113A/-1372879200,0,42902475,622943937,2422728,1121184680,
     :1378263040,-407703520,-43070720,-635166000,269352930,-343219800,
     :124807200,-181380990,-177666720,5552085,-799658871,1644309744,
     :-712245600/
      DATA IS113B/110826240,2*0,-15770475,0,6609855,26334000,68689180,
     :15832320,-2494415,-21027300,56663040,-915705,147390000,-2040885,
     :-116379921,-281093120,131552344,-5691600/
      DATA IS114A/47070144,-2206413,81719,4653176,2*0,-42791040,
     :-13844160,-720,-2664750,0,-139784064,-574770,0,-38864595,
     :-1110417,-13686288,-22158752/
      DATA IS114B/-20186208,2973861,0,58905,-369360,0,18659520,
     :-2429625,2*0,-2611455,-188496,52382715,-2857239,0,-4411176,
     :-16231600/
      DATA IS115A/202254525,2696727,-102792888,3*0,114214320,-11499840,
     :-375587630,2*0,-255006290,0,-95394915,-316603441,-20322064,
     :151082400/
      DATA IS115B/90867975,0,-109504395,151734000,0,51313680,1069035,
     :2*0,-258534045,-368614400,-42858585,107391781,0,548990904,
     :-119523600/
      DATA IS116A/377541780,-355333440,-137287920,11104170,-4677750,
     :-110800305,171609900,-62403600,339976455,742969920,-23217810,
     :-557890806,326337984,485622000/
      DATA IS116B/169620220,-29932980,122226335,77100100,-636278720,
     :-373065,83944300,62587140,18586484,-597322880,-509022976,
     :468608400/
      DATA IS117A/2477790,-6930,1661835,2*0,1655885,0,1185030,-2879602,
     :-4478208,-306000/
      DATA IS117B/130864020,98148015,2*0,197351385,-247307500,62587140,
     :-519283604,0,210361536,468608400/
      DATA IS118A/50069712,-18207168,-10780560,-100139424,3129357,
     :-20117295,-40427100,95099940/
      DATA IS118B/16689904,4392080,8075760,582912,-6258714,8534610,
     :-79057440,2148300,-62021700/
      DATA IS119A/398475,11385,376740,807300/
      DATA IS119B/88550,43470,0,180180,573300/
*
      IF(J1.EQ.113) THEN
        IF(J2.LT.174) RETURN
        IF(J2.LT.193) THEN
          I2=J2-173
          ISKA=IS113A(I2)
          IVAR=9634240
        ELSEIF(J2.LT.239) THEN
          IF(J2.LT.220) RETURN
          I2=J2-219
          ISKA=IS113B(I2)
          IVAR=1770720
        ENDIF
      ELSEIF(J1.EQ.114) THEN
        IF(J2.LT.175) RETURN
        IF(J2.LT.193) THEN
          I2=J2-174
          ISKA=IS114A(I2)
          IVAR=963424
        ELSEIF(J2.LT.239) THEN
          IF(J2.LT.222) RETURN
          I2=J2-221
          ISKA=IS114B(I2)
          IVAR=649264
        ENDIF
      ELSEIF(J1.EQ.115) THEN
        IF(J2.LT.176) RETURN
        IF(J2.LT.193) THEN
          I2=J2-175
          ISKA=IS115A(I2)
          IVAR=4817120
        ELSEIF(J2.LT.239) THEN
          IF(J2.LT.223) RETURN
          I2=J2-222
          ISKA=IS115B(I2)
          IVAR=9738960
        ENDIF
      ELSEIF(J1.EQ.116) THEN
        IF(J2.LT.179) RETURN
        IF(J2.LT.193) THEN
          I2=J2-178
          ISKA=IS116A(I2)
          IVAR=3268760
        ELSEIF(J2.LT.239) THEN
          IF(J2.LT.227) RETURN
          I2=J2-226
          ISKA=IS116B(I2)
          IVAR=4405720
        ENDIF
      ELSEIF(J1.EQ.117) THEN
        IF(J2.LT.182) RETURN
        IF(J2.LT.193) THEN
          I2=J2-181
          ISKA=IS117A(I2)
          IVAR=38760
        ELSEIF(J2.LT.239) THEN
          IF(J2.LT.228) RETURN
          I2=J2-227
          ISKA=IS117B(I2)
          IVAR=9211960
        ENDIF
      ELSEIF(J1.EQ.118) THEN
        IF(J2.LT.185) RETURN
        IVAR=272118
        IF(J2.LT.193) THEN
          I2=J2-184
          ISKA=IS118A(I2)
        ELSEIF(J2.LT.239) THEN
          IF(J2.LT.230) RETURN
          I2=J2-229
          ISKA=IS118B(I2)
        ENDIF
      ELSEIF(J1.EQ.119) THEN
        IF(J2.LT.189) RETURN
        IVAR=3542
        IF(J2.LT.193) THEN
          I2=J2-188
          ISKA=IS119A(I2)
        ELSEIF(J2.LT.239) THEN
          IF(J2.LT.234) RETURN
          I2=J2-233
          ISKA=IS119B(I2)
        ENDIF
      ENDIF
      RETURN
      END
