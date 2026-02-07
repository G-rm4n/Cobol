       IDENTIFICATION DIVISION.
       PROGRAM-ID. EJERCICIO2.

       DATA DIVISION.
           
      *Se dan dos valores cualesquiera enteros. Si el primero es mayor que el segundo,
      *restarle al primero un 20%, pero si el segundo es el mayor restarle al segundo un 15%.
      *Con estos nuevos valores, si el primero quedo mayor a 100 y el segundo mayor a 150,
      *se lo consideran valores correctos, de lo contrario es un intervalo de riesgo.

       WORKING-STORAGE SECTION.

       77  WS-NUM1 PIC 9(3)V9(2).
       77  WS-NUM2 PIC 9(3)V9(2).

       PROCEDURE DIVISION.

           DISPLAY "INGRESE EL NUMERO 1:" WITH NO ADVANCING.
           ACCEPT WS-NUM1.

           DISPLAY "INGRESE EL NUMERO 2:" WITH NO ADVANCING.
           ACCEPT WS-NUM2.

           IF (WS-NUM1>WS-NUM2)
               COMPUTE WS-NUM1= WS-NUM1 * (1 - 0.2)
           ELSE
               COMPUTE WS-NUM2= WS-NUM2 * (1 - 0.15)
           END-IF.

           IF (WS-NUM1>100 AND WS-NUM2>150)
               DISPLAY "LOS VALORES SON CORRECTOS"
           ELSE
               DISPLAY "ES UN INTERVALO DE RIESGO"
           END-IF.
       
       STOP RUN.