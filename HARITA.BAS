10   SCREEN 2:KEY OFF
20    CLS
30  PAINT (16,40)
35  LOCATE 1,1:PRINT"K.T.U.":LOCATE 2,1:PRINT"HALIL YILMAZ"
40    LOCATE 12,24:PRINT"SIFREYI GIRINIZ"
50   LOCATE 12,42:INPUT;C$
60    IF C$="HALIL" OR C$="halil" THEN 110 ELSE 70
70    LOCATE 15,30 : PRINT "UZGUNUM KURAL GEREGI ISLEM YAPAMIYORUM"
80    LOCATE 20,20:PRINT"TEKRAR DENEMEK ISTIYORMUSUN (E/H)"
90  LOCATE 20,57:INPUT;S$:CLS
100   IF S$="E" OR S$="e" THEN 20 ELSE 1060
110   CLS
120  LOCATE 10,20 :INPUT"OLCUM NOKTASI ADEDINI GIRINIZ=";A:CLS
130  LOCATE 10,20 :INPUT"SOL AKIM-POTANSIYEL KOL UZUNLUGUNU GIRINIZ=";B:CLS
140  LOCATE 10,20 :INPUT"SAG AKIM-POTANSIYEL KOL UZUNLUGUNU GIRINIZ=";C:CLS
150  LOCATE 10,20 :INPUT"TEK YATAY SIRADAKI FINCAN SAYISINI GIRINIZ=";G:CLS
160  LOCATE 10,20 :INPUT"TEK DUSEY SIRADAKI FINCAN SAYISINI GIRINIZ=";H:CLS
170  LOCATE 10,20 :INPUT"YATAY SIRADAKI IKI FINCAN ARALIGINI GIRINIZ=";D:CLS
180  LOCATE 10,20 :INPUT"DUSEY SIRADAKI IKI FINCAN ARALIGINI GIRINIZ=";E:CLS
190  DIM A(H,G),B(H,G),C(H,G),K(H,G),T(H,G),Y(H,G),Z(H,G),R(H,G)
200  FOR I=H-1 TO 0 STEP -1
210 FOR J=0 TO G-1
220 A(H-I,J+1)=SQR((B+D*J)^2+(E*I)^2)
230 NEXT J
240 PRINT
250 NEXT I
260 FOR I=H-1 TO O STEP -1
270 FOR J=G-1 TO O STEP -1
280 B(H-I,G-J)=SQR((C+D*J)^2+(E*I)^2)
290 NEXT J
300 PRINT
310 NEXT I
320 FOR I=1 TO H
330 FOR J=1 TO G-1
340 C(I,J)=(1/A(I,J)-1/B(I,J))-(1/A(I,J+1)-1/B(I,J+1))
350 NEXT J
360 PRINT
370 NEXT I
380 CLS
390 FOR I=1 TO H
400 FOR J=1 TO G-1
410 PRINT I".SATIR"J".SUTUN ILK VE SON POTANSIYELINI SIRAYLA VE VIRGULLE GIR=";
420 INPUT;K(I,J),T(I,J):PRINT
430 NEXT J
440 PRINT
450 NEXT I
460 CLS
470 FOR I=1 TO H
480 FOR J=1 TO G-1
490 Y(I,J)=T(I,J)-K(I,J)
500 NEXT J
510 PRINT
520 NEXT I
530 FOR I=1 TO H
540 FOR J=1 TO G-1
550 PRINT I"SATIRDA VERDIGIN" J".AKIMI GIRIN=";
560 INPUT;Z(I,J):PRINT
570 NEXT J
580 PRINT
590 NEXT I:CLS
600 LOCATE 1,20 :PRINT"REZISTIVITE DEGERLERI"
610 LOCATE 2,20 :PRINT"---------------------"
620 X=3.1416
630 FOR I=1 TO H
640 FOR J=1 TO G-1
650 R(I,J)=(2*X)*(Y(I,J))/(C(I,J)*Z(I,J))
660 PRINT USING"####.#  ";R(I,J);
670 NEXT J
680 PRINT
690 NEXT I
700 PRINT"____________________________________________________________________"
710 LOCATE 10,20 :INPUT"VERILERINI SAKLAMAK ISTIYORMUSUN (E/H)=";C$:CLS
720 IF C$="E" OR C$="e" THEN 770
730 IF C$="H" OR C$="h" THEN 740
740 LOCATE 10,20 :INPUT"PROGRAMA DEVAM ETMEK ISTIYORMUSUN (E/H)=";A$:CLS
750 IF A$="E" OR A$="e" THEN 110:CHAIN"HARITA"
760 IF A$="H" OR A$="h" THEN 1070
770 LOCATE 10,15:INPUT"VERILERINI SAKLAYACAGIN KUTUK ADINI GIR=";KAD$:CLS
780 OPEN "R",#1,KAD$,8
790 SAT=H:SUT=G-1
800 FIELD #1,8 AS MAT
810 FIELD #1,2 AS SAT
820 FIELD #1,2 AS SUT
830 LSET SAT=H:LSET SUT=G-1
840 PUT #1,1
850 FOR I=1 TO H
860 FOR J=1 TO G-1
870 LSET MAT=R(I,J)
880 KN=KN+1
890 PUT #1,KN
900 NEXT J:NEXT I
910 CLOSE #1
920 LOCATE 10,15:INPUT"CAGIRACAGIN KUTUK ADINI GIR=";KAD$:CLS
930 OPEN "R",#1,KAD$,8
940 FIELD #1,8 AS MAT
950 GET #1,1
960 KN=1
970 FOR I=1 TO SAT
980 FOR J=1 TO SUT
990 KN=KN+1
1000 GET #1,KN
1010 PRINT USING"####.#  ";MAT;
1020 NEXT J
1030 PRINT
1040 NEXT I
1050 CLOSE #1
1060 LOCATE 16,50:PRINT"------SAYGILARIMI SUNARIM------"
1070 LOCATE 13,30:PRINT"HALIL YILMAZ*******K.T.U****JEOFIZIK.MUH*******"
1075 LOCATE 16,50:PRINT"------SAYGILARIMI SUNARIM------"
1080 LOCATE 14,25:PRINT"_______________________________________________________"
1090  END
