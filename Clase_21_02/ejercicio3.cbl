       IDENTIFICATION DIVISION.
       PROGRAM-ID. EJERCICIO3.

       DATA DIVISION.
      *Ingresar 25 elementos de tipo entero en un arreglo y luego obtener la suma de los
      *valores positivos dentro del conjunto.
       WORKING-STORAGE SECTION.

       01 WS-ARREGLO.
           05 ROW OCCURS 25 TIMES.
               10 DATO PIC S9(3).
       
       77  WS-SUMATORIA PIC 9(5) VALUE 0.

       77  IDX PIC 9(2) VALUE 0.

       PROCEDURE DIVISION.
       
       PERFORM INGRESAR-NUMERO VARYING IDX FROM 1 BY 1 UNTIL IDX >25.
       PERFORM REALIZAR-SUMA VARYING IDX FROM 1 BY 1 UNTIL IDX >25.
       PERFORM MOSTRAR-SUMA.
       STOP RUN.

       INGRESAR-NUMERO.
           DISPLAY "INGRESE EL NUMERO " IDX ":" WITH NO ADVANCING.
           ACCEPT DATO (IDX).

       REALIZAR-SUMA.
           
           IF DATO (IDX) > 0 THEN ADD DATO (IDX) TO WS-SUMATORIA.

       MOSTRAR-SUMA.
           DISPLAY "LA SUMA DE TODOS LOS NUMEROS POSITIVOS ES:"
           WS-SUMATORIA.
       