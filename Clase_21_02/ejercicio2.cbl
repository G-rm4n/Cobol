       IDENTIFICATION DIVISION.
       PROGRAM-ID. EJERCICIO2.

       DATA DIVISION.
      *Se tienen como dato los importes de todas las facturas correspondientes al mes que
      *acaba de finalizar de un comercio (no se sabe cuántas son). Se desea conocer:
      *· cuántas ventas se realizaron
      *· importe promedio de las mismas
      *· cuántos son los importes que superan los 30 pesos
       WORKING-STORAGE SECTION.

       77  WS-MONTO-FACTURA PIC 9(4)V9(2).

       77  WS-CONTADOR-FACTURAS PIC 9(2) VALUE 0.
       77  WS-CONTADOR-IMPORTES30 PIC 9(2) VALUE 0.

       77  WS-SUMATORIA-FACTURAS PIC 9(4) VALUE 0.
       77  WS-PROMEDIO-IMPORTE-FACTURAS PIC 9(4)V9(2).
       77  DISPLAY-PROMEDIO PIC $ZZZ,ZZ9.99 .

       77  WS-ELECCION PIC A.
           88 FALTAN VALUE "S".
           88 TERMINADO VALUE "N".
       

       PROCEDURE DIVISION.

       PERFORM INGRESAR-FACTURAS WITH TEST AFTER UNTIL TERMINADO
       PERFORM CALCULAR-PROMEDIO
       PERFORM MOSTRAR-RESULTADO
       STOP RUN.
       
       INGRESAR-FACTURAS SECTION.

           INGRESAR-MONTO-FACTURA.
               DISPLAY "INGRESE MONTO DE FACTURA:" WITH NO ADVANCING
               ACCEPT WS-MONTO-FACTURA.
    
           SUMAR-IMPORTES.
               ADD WS-MONTO-FACTURA TO WS-SUMATORIA-FACTURAS.
    
           INCREMENTAR-CONTADORES.
               ADD 1 TO WS-CONTADOR-FACTURAS
    
               IF WS-MONTO-FACTURA>30 THEN ADD 1 TO 
               WS-CONTADOR-IMPORTES30.
           
           INGRESAR-ELECCION.
               DISPLAY "FALTAN FACTURAS POR INGRESAR?(S/N):" WITH NO
               ADVANCING.
               ACCEPT WS-ELECCION.
           
           EXIT SECTION.
       
       CALCULAR-PROMEDIO.
           COMPUTE WS-PROMEDIO-IMPORTE-FACTURAS = WS-SUMATORIA-FACTURAS/
           WS-CONTADOR-FACTURAS.

       MOSTRAR-RESULTADO.
           MOVE WS-PROMEDIO-IMPORTE-FACTURAS TO DISPLAY-PROMEDIO

           DISPLAY "LA CANTIDAD DE FACTURAS ES:" WS-CONTADOR-FACTURAS
           DISPLAY "LA CANTIDAD DE FACTURAS QUE SUPERAN "
           "LOS 30 PESOS SON:"WS-CONTADOR-IMPORTES30
           DISPLAY "EL PROMEDIO DE FACTURAS ES:" DISPLAY-PROMEDIO.

       