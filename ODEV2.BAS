10                   '******************STOK PROGRAMI******************
20                   '-------------------------------------------------
30 CLS:KEY OFF
40 OPEN "R",#1,"STOK.DAT",31
50 FIELD#1,1 AS A1$,20 AS A2$,2 AS A3$,2  AS A4$,4 AS A5$,2 AS A6$
60                  '***************PROGRAM MENUSU*************
70 CLS
80 LOCATE 2,30:PRINT "STOK MENUSU"
90 LOCATE 7,10:PRINT "1-GIRIS"
100 LOCATE 9,10:PRINT "2-DUZELTME"
110 LOCATE 11,10:PRINT "3-SILME"
120 LOCATE 13,10:PRINT "4-GOZLEM"
130 LOCATE 15,10:PRINT "5-LISTELEME"
140 LOCATE 17,10:PRINT "6-GIRIS-CIKISLAR"
150 LOCATE 19,10:PRINT "7-YAZICI DOKUMU"
160 LOCATE 21,10:PRINT"8-PROGRAM SONU"
170 LOCATE 23,10:PRINT "SECIMINIZ <1,2,3,4,5,6,7,8>"
180 LOCATE 23,40:INPUT A
190 ON A GOTO 220,300,410,530,590,610,1760,680
200 GOTO 70
210              '***GIRIS***********************************************
220 GOSUB 730
230 IF A1$="*" THEN LOCATE 22,2:INPUT"Bu Kayit Dosyada  Mevcut<ENT>Bas";E$:GOTO  70
240 GOSUB 840
250 GOSUB 930
260 GOSUB 1070
270 GOSUB 1100
280 IF EVET$="E" THEN 220 ELSE 70
290           '***DUZELTME************************************************
300 GOSUB 730
310 IF A1$="@" THEN LOCATE 22,2:INPUT "KAYIT SILINMIS,..<ENT>",L$:GOTO 70
320 IF A1$ <> "*" THEN LOCATE 22,2:INPUT"BU KAYIT DOSYADA BULUNAMADI<ENT>BAS";E$ :GOTO 70
330 GOSUB 800
340 GOSUB 840
350 GOSUB 1140
360 GOSUB 930
370 GOSUB 1070
380 GOSUB 1100
390 IF EVET$="E" THEN 300 ELSE 70
400            '***SILME***************************************************
410 GOSUB 730
420 IF A1$<>"*" THEN LOCATE 22,2:INPUT"BU KAYIT BULUNAMADI ENT BAS"E$:GOTO 70
430 GOSUB 800: GOSUB 840: GOSUB 1140
440 LOCATE 2,65: COLOR 0,7: PRINT"SILME":COLOR 7,0
450 LOCATE 22,40: COLOR 31,0:INPUT"SILINECEK MI?<E/H>",SIL$
460 COLOR 7,0: LOCATE 22,40:PRINT"       "
470 IF SIL$<>"E" THEN 70
480 LSET A1$="@"
490 GOSUB 1070
500 GOSUB 1100
510 IF EVET$="E" THEN 410 ELSE 70
520                '***GOZLEM**********************************************
530 GOSUB 730
540 IF A1$<>"*" THEN LOCATE 22,2:INPUT"BU KAYIT DOSYADA BULUNAMADI,<ENT> BAS";E$:GOTO 70
550 GOSUB 800: GOSUB 840: GOSUB 1140
560 GOSUB 1100
570 IF EVET$="E" THEN 530 ELSE 70
580                '***LISTELEME*******************************************
590 GOSUB 1260: GOTO 70
600                   '***GIRIS CIKISLAR***********************************
610 GOSUB 730
620 IF A1$="@" THEN LOCATE 22,2:INPUT"KAYIT SILINMIS;..<ENT>",L$: GOTO 70
630 IF A1$<>"*" THEN LOCATE 22,2:INPUT "KAYIT GIRILMEMIS,.<ENT>",L$: GOTO 70
640 GOSUB 1640
650 GOSUB 1090
660 IF EVET$="E" THEN 610 ELSE 70
670               '***PROGRAM SONU******************************************
680 CLOSE#1
690 END
700               '***********ALT PROGRAMLAR********************************
710         '*************=====================*****************************
720    '***EKRANDAN KAYIT NO ALIR, DOSYAYI OKUR***
730 CLS
740 LOCATE 10,10:INPUT "STOK NO SUNU GIRINIZ:",KOD%
750 IF KOD%=0 THEN 730
760 GOSUB 1220
770 GET#1,KOD%
780 RETURN
790             '********BUFFERI DEGISKENLERE ATAR**************************
800 B1$=A2$:B2%=CVI(A3$):B3%=CVI(A4$)
810 B4!=CVS(A5$):B5%=CVI(A6$)
820 RETURN
830        '*******EKRANA SABITLERI GOSTERIR*******************************
840 CLS: LOCATE 2,10
850 COLOR 0,15:PRINT"GIRIS/DUZELTME/GOZLEM  BILGILERI":COLOR 7,0
860 LOCATE 4,10:PRINT"STOK ADI:"
870 LOCATE 6,10:PRINT"STOK MIKTARI:"
880 LOCATE 8,10:PRINT"ASGARI SEVIYE:"
890 LOCATE 10,10:PRINT"BIRIM SATIS FIATI:"
900 LOCATE 12,10:PRINT"KDV ORANI:"
910 RETURN
920 '*************EKRANDAN DEGISKENLERI ALIR******************************
930 LOCATE 2,65:COLOR 0,7
940 IF A1$<>"*" THEN PRINT "YENI GIRIS" ELSE PRINT "DUZELTME"
950 COLOR 7,0
960 LOCATE 4,30:INPUT " ",B1$:IF B1$<>"" THEN LSET A2$=B1$
970 LOCATE 6,30:INPUT"",B2%: IF B2%<>0 THEN LSET A3$=MKI$(B2%)
980 LOCATE 8,30: INPUT"", B3%:IF B3%<>0 THEN LSET A4$=MKI$(B3%)
990 LOCATE 10,30: INPUT"",B4!:IF B4!<>0 THEN LSET A5$=MKS$(B4!)
1000 LOCATE 12,30: INPUT"",B5%:IF B5%<>0 THEN LSET A6$=MKI$(B5%)
1010 LOCATE 22,3:COLOR 0,7:PRINT "GIRISLER DOGRUMU<E/H>":COLOR 7,0
1020 LOCATE 22,34:INPUT K$
1030 IF K$="H" THEN 960
1040 LSET A1$="*"
1050 RETURN
1060                '************DOSYAYA YAZDIRIR****************************
1070 PUT#1,KOD%
1080 RETURN
1090          '****EKRANDAN EVET/HAYIR CEVABI ALIR**************************
1100 LOCATE 22,45:PRINT"DEVAM MI<E/H>":COLOR 7,0
1110 LOCATE 22,70:INPUT"",EVET$
1120 RETURN
1130     '******DEGISKENLERI EKRANA GORUNTULER*******************************
1140 COLOR 0,7
1150 LOCATE 4,31:PRINT B1$
1160 LOCATE 6,31:PRINT USING"#####";B2%
1170 LOCATE 8,31:PRINT USING"#####";B3%
1180 LOCATE 10,31:PRINT USING"#######;.#";B4!
1190 LOCATE 12,31:PRINT USING"##";B5%
1200 COLOR 7,0:RETURN
1210          '********BUFFER A BOSLUK TASIR**********************************
1220 LSET A2$="":LSET A3$=" ":LSET A4$=" "
1230 LSET A5$=" ":LSET A6$=" "
1240 B1$=" ":B2%=0:B3%=0:B4!=0:B5%=0
1250 RETURN
1260        '********LISTELEME BOLUMU*****************************************
1270 GOSUB 1440
1280 GOSUB 1490:T=4
1290 FOR KOD%=L1% TO L2%
1300 GET#1,KOD%:IF A1$<>"*" THEN 1410
1310 IF CVI(A3$)>=CVI(A4$) THEN 1410
1320 GOSUB 790
1330 LOCATE T,2:PRINT KOD%
1340 LOCATE T,8:PRINT  B1$
1350 LOCATE T,29:PRINT USING"#####";B2%
1360 LOCATE T,45:PRINT USING"#####";B3%
1370 LOCATE T,60:PRINT USING"########.#";B4!
1380 LOCATE T,71:PRINT USING"#####";B3%-B2%
1390 T=T+1
1400 IF T=21 THEN GOSUB 1100: GOSUB 1490:T=4
1410 NEXT
1420 GOSUB 1100:IF EVET$="H" OR EVET$="H" THEN RETURN ELSE 1280
1430    '***LISTELENECEK ILK VE SON KAYIT NOKTALARI ALIR
1440 CLS
1450 LOCATE 10,10:INPUT"ILK STOK NO..:",L1%: IF L1%=0 OR (L1%>INT(LOF(1)/31)) THEN L1%=1
1460 LOCATE 12,10:INPUT"SON STOK NO..:",L2%:IF L2%=0 OR(L2%>INT(LOF(1)/31)) THEN L2%=INT(LOF(1)/31)
1470 RETURN
1480        '***EKRANA BASLIK ATAR*******************************************
1490 CLS
1500 LOCATE 2,2:PRINT "KOD"
1510 LOCATE 2,8:PRINT "STOK ADI"
1520 LOCATE 2,31:PRINT "ASGARI SEV"
1530 LOCATE 2,45:PRINT "MEVCUT MIKTAR"
1540 LOCATE 2,60:PRINT "BIRIM FIATI"
1550 LOCATE 2,71:PRINT "IHTIYAC"
1560 LOCATE 3,2:PRINT "==="
1570 LOCATE 3,8:PRINT "===================="
1580 LOCATE 3,31:PRINT "=========="
1590 LOCATE 3,45:PRINT "============="
1600 LOCATE 3,60:PRINT "==========="
1610 LOCATE 3,71:PRINT "=========="
1620 RETURN
1630             '***STOK HAREKETLERI(GIRIS VE CIKISLAR)*********************
1640 GOSUB 800: GOSUB 840: GOSUB 1140
1650 LOCATE 2,65: COLOR 0,7:PRINT"STOK HAREKETI":COLOR 7,0
1660 C%=0: LOCATE 16,10: INPUT"GIREN VEYA CIKAN MIKTAR:",C%
1670 LOCATE 18,10: INPUT"GIRIS ISE (G) CIKIS ISE(C)GIRINIZ:",KOD$
1680 IF KOD$<>"G" AND KOD$<>"C" THEN 1670
1690 IF KOD$="G" THEN 1730
1700 IF (B2%-C%)<B3% THEN COLOR 31,0: LOCATE 22,1:PRINT USING"DIKKAT..ASGARI SEVIYE#####";B3%:COLOR 7,0
1710 IF C%>B2% THEN COLOR 31,0 :LOCATE 23,1:PRINT USING"DIKKAT..EN COK#####";B2%: COLOR 7,0: GOTO 1660
1720 C%=-C%
1730 B2%=B2%+C%: LSET A3$=MKI$(B2%)
1740 PUT#1,KOD%
1750 RETURN
1760 'BNNBN
1770 GOSUB 1440
1780 T%=L1%
1790 CLS
1800 A%=0
1810 LPRINT TAB(30)"STOK MAMULLERI DOKUMU"
1820 LPRINT TAB(30)STRING$(21,"@")
1830 L1%=T%
1840 LPRINT "KOD";TAB(7)"STOK ADI";TAB(28)"ASGARI SEV";TAB(40)"MEVCUT MIK";TAB(52)"BIRIM FIATI";TAB(66)"KDV OR"
1850 LPRINT STRING$ (72,"&")
1860 FOR I%=L1% TO L2%
1870 GET #1,I%
1880 A%=A%+1
1890 LPRINT I%;TAB(7)A2$;TAB(28)CVI(A3$);TAB(40)CVI(A4$);TAB(52)CVS(A5$);TAB(66)CVI(A6$)
1900 T%=T%+1
1910 IF A%=40 THEN LPRINT STRING$(72,"&"):INPUT"DEVAM ICIN ENT BAS:";ENT$:GOTO 1790
1920 NEXT
1930 LPRINT STRING$ (72,"&")
1940 INPUT"DOKUM BITTI ENT BAS:";E$
1950 GOTO 70
