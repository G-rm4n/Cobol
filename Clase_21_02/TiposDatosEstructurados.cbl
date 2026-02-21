       IDENTIFICATION DIVISION.
       PROGRAM-ID. TiposDatosEstructurados.
       

       DATA DIVISION.
       WORKING-STORAGE SECTION.

       *> LOS NIVELES DE PERTENENCIA DE LOS DATOS ESTRUCTURADOS EN
       *> DISTINTOS NIVELES(EJ, LA TABLA SIGUIENTE) DEBEN SER SIEMPRE
       *> ASCENDENTES,ALMENOS INCREMENTADOS EN 1, PERO POR BUENA
       *> PRACTICA, PREFERIBLEMENTE EN 5.

       01  WS-TABLA.
           05  WS-DEEP OCCURS 3 TIMES. *> si esta dimension tiene el
                                       *> mismo nivel de pertenencia que
                                       *> las otras dara error, debe ser
                                       *> menor.
               05 WS-ROW OCCURS 25 TIMES.
                   10 WS-COL OCCURS 5 TIMES.
                       15 DATO PIC 9(3).

      *    PARA ACCEDER A LOS DATOS DE UNA TABLA CUYO UTLIMO CAMPO SE LLAME
      *    WS-DATO SE HACE DE LA SIGUIENTE FORMA(TOAMANDO COMO EJ LA
      *    TABLA ANTERIOR):
      *    WS-DATO (INDICE-DEEP) (INDICE-ROW) (INDICE-COL)

      01  WS-TABLA.
           05  WS-DEEP OCCURS 3 TIMES. *> si esta dimension tiene el
                                       *> mismo nivel de pertenencia que
                                       *> las otras dara error, debe ser
                                       *> menor.
               05 WS-ROW OCCURS 25 TIMES.
                   10 WS-COL OCCURS 5 TIMES.
                       15 PERSONA.
                           20 NOMBRE PIC A(32).
                           20 APELLIDO PIC A(32).
       
      *    PARA ACCEDER A LOS DATOS DE UNA TABLA CUYO UTLIMO SEA UN 
      *    REGISTRO SE HACE DE LA SIGUIENTE FORMA(TOAMANDO COMO EJ LA
      *    TABLA ANTERIOR):
      *    NOMBRE-CAMPO-REGISTRO OF
      *        PERSONA (INDICE-DEEP) (INDICE-ROW) (INDICE-COL) 

       01  WS-REGISTRO-PERSONA.
           05  WS-NOMBRE PIC A(10).
           05  WS-MAIL PIC X(32).
           05  WS-EDAD PIC 9(3).

       01  WS-REGISTRO-PERSONA-2.
           05  WS-NOMBRE PIC A(10).
           05  WS-MAIL PIC X(32).
           05  WS-EDAD PIC 9(3).

       *> EN CASO DE TENER UN CAMPO EN COMUN ENTRE REGISTROS DISTINTOS
       *> SI QUEREMOS REFERIRNOS A EL, DEBEMOS USAR, POR EJEMPLO,
       *> WS-NOMBRE OF NOMBRE-REGISTRO.

       PROCEDURE DIVISION.
       
           