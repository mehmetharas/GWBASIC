10 CLS
20 SCREEN 2
50 PI=3.1416181618#
100 FOR I = 55 TO 59 STEP 1
110 CIRCLE (450,155),I,PI
111 NEXT I
122 Z%=125:C%=65:M%=97:N%=219:L%=97:K%=655:R%=125:Q%=701
123 Z%=Z%+4:C%=C%+4:N%=N%+2:M%=M%-3:K%=K%+3:R%=R%+3:Q%=Q%+1
132 LINE (C%,47)-(119,Z%),3,B
133 LINE (N%,57)-(699,M%),3,B
135 LINE (457,57)-(699,M%),3
136 LINE (555,57)-(281,M%),3
137 LINE (N%,299)-(619,N%),3,B
138 LINE (K%,99)-(Q%,R%),3,B
140 IF M%>1 GOTO 123
190 Y$=INKEY$:IF Y$="" GOTO 190
590 SCREEN 0:END
