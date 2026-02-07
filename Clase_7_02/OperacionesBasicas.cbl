       IDENTIFICATION DIVISION.
       PROGRAM-ID. OPERACIONESBASICAS.

       DATA DIVISION.

       WORKING-STORAGE SECTION.
       77  WS-ENTRY-DATA PIC 9(2).
       77  WS-DISPLAY-DATA PIC 9(2).
       77  WS-NUM2 PIC 9(2).
       77  WS-RESULT PIC 9(2).
       77  WS-REMAINDER PIC 9(2).

       PROCEDURE DIVISION.

       *>OPERACIONES DE ENTRADA Y SALIDA
       ACCEPT WS-ENTRY-DATA. *>INGRESAR O ACEPTAR DATOS.
       DISPLAY WS-DISPLAY-DATA. *>MOSTRAR POR PANTALLA.

       *>VERBOS BASICOS
       multiply WS-ENTRY-DATA by WS-NUM2 giving WS-RESULT.
                                   *>PUEDE NO ESTAR GIVING
                                   *>SI NO ESTA GIVIN SE ALMACENA EL
                                   *>RESULTADO EN EL SEGUNDO OPERANDO
       divide WS-ENTRY-DATA by WS-NUM2 giving WS-RESULT 
           remainder WS-REMAINDER. *>PUEDEN NO ESTAR REMAINDER O GIVING
                                   *>SI NO ESTA GIVIN SE ALMACENA EL
                                   *>RESULTADO EN EL SEGUNDO OPERANDO
       subtract WS-ENTRY-DATA from WS-NUM2 giving WS-RESULT.
                                   *>PUEDE NO ESTAR GIVING
                                   *>SI NO ESTA GIVIN SE ALMACENA EL
                                   *>RESULTADO EN EL SEGUNDO OPERANDO
       add WS-ENTRY-DATA to WS-NUM2 giving WS-RESULT.
                                   *>PUEDE NO ESTAR GIVING
                                   *>SI NO ESTA GIVIN SE ALMACENA EL
                                   *>RESULTADO EN EL SEGUNDO OPERANDO
       
       *>OPERACION DE ASIGNACION INTERNA.
       MOVE WS-ENTRY-DATA TO WS-DISPLAY-DATA.
       