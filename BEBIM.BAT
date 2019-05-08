rem   *****************************************************************
rem   *  Bu .bat programi SAVE "B:<prg.adi>,A" komutu ile ASCII       *
rem   *  olarak B: surucusune yuklenmis bir BASIC programini          *
rem   *  BASCOM, LINK eder ve calistirir.                             *
rem   *****************************************************************
rem   *  Programinizin bulundugu disketi B> surucuye takiniz          *
rem   *  A>BEBIM <program ismi> [ENT] diyeceksiniz                    *
pause *  Derleme ve Link islemi basliyor [ENT] bas:                   *
B:
A:BASCOM %1;
A:LINK %1;
A:
B:%1
