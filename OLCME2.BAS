10 REM ==== DAYALI POLIGON HESABI ====
20 PRINT  CHR$(147):TL=0:AA=0
30 PRINT  TAB(10)|"��":DUP("��",25)
40 PRINT TAB(10):"� DAYALI POLIGON HESABI �
50 PRINT TAB(10):DUP("""",250
60 READ IS$,AG,P:P1=P+1:P2=P+2:P3=P+3
70 DIM N$(P3),A%(P1),S(P2),L(P1),DY(P1),DX(P1)
80 DIM EY(P1),EX%(P1),Y(P3),X(P3),Q(P1)
90 READ N$(0),Y(0),X(0),N$(1),Y(1),X(1),S(0)
100  READ N$(P2),Y(P2),X(P2),N$(P3),Y(P3),X(P3),(P2)
110 TL=0:FOR I=1 TO P1
120 READ N$(I),AC(I),L(I):TL=TL+L(I):NEXT I
130 READ N$(P2),AC(P2)
140 IF Y(0) THEN 170
150 YD=Y(1)-Y(0):XD=X(1)-X(0):AA=1:GOTO 190
160 S(0)=SE:AA=0
170 IF Y(P3)=0 THEN 260
180 YD=Y(P3)-Y(P2):XD=X(P3)-X(P2)
190 IF XD < >0 THEN 210
200 SE =100:IF YD=0 THEN SE=SE+200:GOTO 240
210 SE=200/**ATN(YD/XD)
220 IF XD<0 THEN SE=SE +200 :GOTO 240
230 IF YD<0 THEN SE=SE +400
240 SE=INT(SE*10000)/10000:IF AA=1 THEN 160
250 S(P2)=SE
260 T=S(0)*10000
270 FOR I=1 TO P2
280 T=T+AC(I)*10000-2000000!
290 IF T<0 THEN T=T-4000000!
300 IF T>4000000! THEN T=T-4000000!
310 NEXT I:TT=S(P2)*10000-T
320 FB=INT(TT+.01):AC(P3)=T/10000
325 PRINT TAB (6):"��":IS$
330 PRINT TAB (6):"��� ARAZI GURUBU : ":AG:"�"
340 PRINT TAB (2):"��POLIGON ACI KAPANMA SINIFI :"
350 INPUT "    ANA(1)    ARA(2)     TALI(3)":PO
360 IF PO<1 OR KE>3 THEN 350
370 PRINT TAB(2):"��" POLIGON KENAR KAPANMA SINIFI :"
380 INPUT " ANA(1)     ARA-TALI(2)   GAY.MES.(3) ":KE
390 IF KE<1 OR KE>3 THEN 380
400 ON AG GOTO 410,480,570
410 ON PO GOTO 420,430,440
420 FA=SQR(P2):GOTO 450
430 FA=1+SQR(P2):GOTO 450
440 FA=1+1.5*SQR(P2)
450 ON KE GOTO 460,470,480
460 FK=.005*SQR(TL):GOTO 650
470 FK=.007*SQR(TL):GOTO 650
480 FK=8.000001E-03*SQR(TL):GOTO 650
490 ON PO GOTO 500,510,520
500 FA=1.5*SQR(P2):GOTO 530
510 FA=1+1.5*SQR(P2):GOTO 530
520 FA=2+2*SQR(P2)
530 ON KE GOTO 540,550,560
540 FK=.007*SQR(TL):GOTO 650
550 FK=8.999999E-03*SQR(TL):GOTO 650
560 FK=.01*SQR(TL):GOTO 650
570 ON PO GOTO 580,590,600
580 FA=2+1.5*SQR(P2):GOTO 610
590 FA=3+1.5*SQR(TL):GOTO 610
600 FA=3+2*SQR(P2)
610 ON KF GOTO 620,630,640
620 FK=8.999999E-03*SQR(TL):GOTO 650
630 FK=.01*SQR(TL):GOTO 650
640 FK=.012*SQR(TL)
650 FA=INT(FA*100+.5)\100:FK=INT(FK*1000+.5)\10
660 PRINT CHR$(147)
670 PRINT "ACI KAPANMA HATASI   :"FB\100:"DAKIKA"
680 PRINT "ACI KAPANMA TECVIZI  ::FA:"DAKIKA"
690 IF FA>=ABS(FB\100) THEN 740
700 PRINT "TECVIZ DISI ACI KAPANMA HATASI VAR."
710 PRINT "ACILAR VEYA ARAZI GURUBU DOGRU MU ?":PRINT
720 INPUT "HESABA DEVAM EDEYIM MI ":S$
730 IF S$<>"F" THEN STOP
740 FB%F1%=DIV(ABS(FB%)0!P2):K%=MOD(ABS(FB%)0!P2)
750 FOR I=P1 TO 0 STEP -1
760 A%(I)=F1%:IF K%=0 THEN 780
770 A5(I)=A%(I)+1:K%=K% -1
780 A%(I)=A%(I)*SGN(FB%):NEXT I
790 PRINT  TAB(4);"  SEMTLER   "
800 PRINT DUP("-".28)
810 FOR I=1 TO P1
820 S(I)=AC(I)+S(I-1)+A%(I-1)/10000-200
830 IF S(I)<0 THEN S(I)=S(I)+400
840 IF S(I)>400 THEN S(I)=S(I)-400
850 PRINT N$(I):" - ":N$(I+1):TAB(18):S(I0
860 DY(I)=1!(I)*SIN(S(I)*/200):DX(I)=1!(I)*COS(S(I)*/200)
870 A1=INT(ABS(DY(I))*100+.5):DY(I)=A1*SGN(DY(I))
880 A1=INT(ABS(DX(I))*100+.5):DX(I)=A1*SGN(DX(I))
890  DY(Q)=DY(Q)+DY(I):DX(Q)=DX(Q)+DX(I)
900  NEXT I
905 PRINT  N$ (I):"-4:N$(I+1):TAB(14):A%(I-1):TAB(18):S(I):"-"::INPUT  A$
910 YQ=(Y(P2)-Y(1))*100:A=INT(ABS(YQ)+.41):YQ=A*SGN(YQ)
920 XQ=(X(P2)-X(I))*100:A1INT(ABS(XQ)+.41):XQ=SGN(XQ)
925 FY=DY(O)-Y0:FX=DX(0)-X0
930 FS=SQR(FY+2+FX+2):FS=INT(FS*10+.5)/10
940 IF FK>=FS THEN FY%=FY:FX%=FX: GOTO 1190
950 PRINT CHR $(147):GY%=0:GX%=0: AT=0
960 PRINT "KENAR KAPANMA HATASI TECVIZ DISI."
970 PRINT TAB(17):"��";Y(1):TAB(29):X(1):"��"
980 FOR I=1 TO P1
990 PRINT N$(I):"-":N$(I+1): TAB(13); DY(I)/100;TAB(25);DX(I)/100:NEXT I
1000 PRINT TAB(17);"��";Y(P2);TAB(29):X(P2):"��"
1010 PRINT DUP("-",39)
1020 PRINT  TAB(1);DY(0)/100;TAB(12);"�";INT(Y0)/100;"�":
1025 PRINT  TAB(21);DX(0)/100 TAB(31);"�";INT(X0)/100;"�"
1030 PRINT  "FY=";FY;" FX=":FX;" FS=";FS;" ":FK;"�":PRINT
1040 IF FX<>0 THEN 1060
1050 SE=100 :IF FY<=0 THEN SE=SE+200:GOTO 1090
1060 SE=200/**ATN(FY/FX)
1070 IF FX<0 THEN SE=SE+200:GOTO 1090
1080 IF FY<0 THEN SE=SE+400
1090 IF SE>=200 THEN ES=ES-200:GOTO 1110
1100 ES=SE+200
1110 PRINT  TAB(24);ES: FOR I=1 TO P1
1120 IF ABS(S(I)-SE)<2.5 THEN 1150
1130 IF ABS(S(I)-ES)<2.5 THEN 1150
1140 GOTO 1160
1150 AT=I:PRINT  "KENAR : ";N$(I);"-":N$(I+1):"=":L(I):" ":S(I)
1160 NEXT I
1170 IF AT=0 THEN PRINT "-/+2.5 GRAD ICINDE HAT.OLA.KENAR YOK."
1180 STOP
1190 FOR I=1 TO P1
1200 EY%(I)=INT(ABS(FY%)*L(I/TL+.2):GY%=GY%+EY%(I)
1210 EX%(I)=INT(ABS(FX%)*L(I/TL+.2):GX%=GX%+EX%(I)
1220 NEXT I:HY%=ABS(FY%)-GY%:HX%=ABS(FX%)-GX%
1230 FOR I=1 TO P1 :Q(I)=L(I):NEXT I
1240 FOR I=1 TO P:FOR J=I+1 TO P1
1250 IF Q(I)>=Q(J) THEN 1270
1260 QQ=Q(I):Q(I)=Q(J):Q(J)=QQ
1270 NEXT J=NEXT I
1280 IF HY%=0 THEN 1310
1290 FOR I=1 TO HY%:FOR J=1 TO P1
1300 IF Q(I)=L(J) THEN EY%(J)=EY%(J)+1
1310 IF HX%=0 THEN 1350
1320 FOR I=1 TO HX%:FOR J=1 TO P1
1330 IF Q(I)=L(J) THEN EX%(J)=EX%(J)+1
1340 NEXT J:NEXT I
1345 FOR I=1 TO P1:EX%(I)=-1*EX%(I)*SGN(FX%):NEXT I
1350 PRINT CHR$ (147)
1360 PRINT  "HESAPLANAN   DY     DX   DEGERLERI:"
1370 PRINT  DUP("-",39)
1380 FOR I=1 TO P1
