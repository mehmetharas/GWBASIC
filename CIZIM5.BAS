10 CLS
20 SCREEN 2,0:K%=51:ZZ%=1
30 PI=3.1416
35 FOR I = 1 TO 41  STEP 1
40 CIRCLE(77,K%),I,PI
41 NEXT I
45 FOR J = 1 TO 41 STEP 2
50 CIRCLE(127,K%),J,PI
51 NEXT J
60 FOR K = 1 TO 41 STEP 3
70 CIRCLE(177,K%),K,PI
71 NEXT K
80 FOR M = 1 TO 41 STEP 4
90 CIRCLE(227,K%),M,PI
91 NEXT M
100 FOR N = 1 TO 41 STEP 5
110 CIRCLE(277,K%),N,PI
111 NEXT N
120 FOR L = 1 TO 41 STEP 6
130 CIRCLE(327,K%),L,PI
131 NEXT L
132 FOR LL = 1 TO 41 STEP 6
133 CIRCLE(377,K%),LL,PI
134 NEXT LL
135 FOR NN = 1 TO 41 STEP 5
136 CIRCLE(427,K%),NN,PI
137 NEXT NN
138 FOR MM = 1 TO 41 STEP 4
139 CIRCLE(477,K%),MM,PI
140 NEXT MM
141 FOR WW = 1 TO 41 STEP 3
142 CIRCLE(527,K%),WW,PI
143 NEXT WW
150 FOR QQ = 1 TO 41 STEP 2
151 CIRCLE(577,K%),QQ,PI
152 NEXT QQ
153 FOR ZZ = 1 TO 41 STEP 1
154 CIRCLE(627,K%),ZZ,PI
155 NEXT ZZ
170 LINE (333,293)-(641,333),12,BF
180 K%=K%+100 :IF K%<351 GOTO 35
190 Y$=INKEY$:IF Y$="" GOTO 190
550 SCREEN 0:END
