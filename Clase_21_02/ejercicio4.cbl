       IDENTIFICATION DIVISION.
       PROGRAM-ID. EJERCICIO4.

       DATA DIVISION.

      *De los alumnos de una escuela se registra su apellido, nombre y su altura. Como máximos hay 400 alumnos.
      *Diseñar un algoritmo que indique el nombre del alumno más alto y su altura (sólo uno es
      *el más alto).

       WORKING-STORAGE SECTION.

       01  WS-TABLE.
           05 ROW OCCURS 400 TIMES.
               10 ALUMNO.
                   15 APELLIDO PIC A(32).
                   15 NOMBRE PIC A(32).
                   15 ALTURA PIC 9(1)V9(2).

       01 WS-ALUMNO. *> REGISTRO DONDE SE GUARDA INICIALMENTE LOS DATOS
                     *> DE LOS ALUMNOS ANTES DE SER INGRESADOS EN LA
                     *> TABLA
                   05 APELLIDO PIC A(32).
                   05 NOMBRE PIC A(32).
                   05 ALTURA PIC 9(1)V9(2).
       
       77  WS-MAS-ALTO PIC A(32). *> AQUI SE GUARDA EL NOMBRE DEL MAS
                                  *>ALTO
       77  WS-ALTURA-MAS-ALTA PIC 9(1)V9(2) VALUE 0. *>AQUI SE GUARDA
                                     *> LA ALTURA DEL ALUMNO MAS ALTO

       77  WS-CONTADOR-ALUMNOS PIC 9(2) VALUE 0.*> INDICE DE LA PRIMERA
                           *>ITERACION, TAMBIEN AL FINAL DE LA MISMA,
                           *>TENDREMOS AQUI LA CANTIDAD FINAL DE ALUMNOS

       77  WS-ELECCION PIC A. *> VARIABLE DONDE SE GUARDARA SI HAY O NO
                              *> MAS ALUMNOS.
           88 FALTAN VALUE "S".
           88 TERMINO VALUE "N".

       77  I PIC 9(3) VALUE 0. *> INDICE NECESARIO PARA REALIZAR LA
                               *> SEGUNDA ITERACION.

       PROCEDURE DIVISION.

       PERFORM INGRESAR-ALUMNO WITH TEST BEFORE 
           VARYING WS-CONTADOR-ALUMNOS FROM 1 BY 1
           UNTIL TERMINO OR WS-CONTADOR-ALUMNOS>400.
       
       PERFORM DETERMINAR-ALUMNO-MAS-ALTO  WITH TEST BEFORE
           VARYING I FROM 1 BY 1
           UNTIL I > WS-CONTADOR-ALUMNOS.
       
       PERFORM MOSTRAR-MAS-ALTO.
       STOP RUN.

       INGRESAR-ALUMNO.
           DISPLAY "INGRESE EL APELLIDO DEL ALUMNO:" WITH NO ADVANCING
           ACCEPT APELLIDO OF WS-ALUMNO

           DISPLAY "INGRESE EL NOMBRE DEL ALUMNO:" WITH NO ADVANCING
           ACCEPT NOMBRE OF WS-ALUMNO

           DISPLAY "INGRESE LA ALTURA DE ALUMNO, EN FORMATO M.CM:"
           WITH NO ADVANCING
           ACCEPT ALTURA OF WS-ALUMNO
           MOVE WS-ALUMNO TO ALUMNO (WS-CONTADOR-ALUMNOS)
           
           DISPLAY "FALTAN ALUMNOS POR INGRESAR?(S/N):" WITH NO 
           ADVANCING
           ACCEPT WS-ELECCION.

       DETERMINAR-ALUMNO-MAS-ALTO.
           
           IF ALTURA OF ALUMNO (I) > WS-ALTURA-MAS-ALTA THEN
               MOVE ALTURA OF ALUMNO (I) TO WS-ALTURA-MAS-ALTA
               MOVE NOMBRE OF ALUMNO (I) TO WS-MAS-ALTO.

       MOSTRAR-MAS-ALTO.
           
           DISPLAY "EL ALUMNO MAS ALTO ES: "WS-MAS-ALTO
           DISPLAY "Y SU ALTURA ES:" WS-ALTURA-MAS-ALTA.
