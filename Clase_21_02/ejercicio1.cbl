       IDENTIFICATION DIVISION.
       PROGRAM-ID. EJERCICIO1.

      *Calcular el sueldo de cada uno de los 50 operarios de una fábrica dados como datos la
      *remuneración por hora (es la misma para todos los operarios) y la cantidad de horas
      *que trabajó en el mes cada operario.

       DATA DIVISION.

       WORKING-STORAGE SECTION.

       77 I PIC 9 VALUE 0.

       77 WS-HORAS-TRABAJADAS PIC 9(2).
       77 WS-VALOR-HORA PIC 9(2)V9(3).
       
       77 WS-SALARIO PIC 9(5)V9(3).

       77 WS-SALARIO-DISPLAY PIC $ZZZ,ZZ9.999 .

       PROCEDURE DIVISION.

       PERFORM INGRESAR-VALOR-HORA.
       PERFORM CALCULAR-SALARIOS 50 TIMES.
       STOP RUN.

       INGRESAR-VALOR-HORA.
           DISPLAY "INGRESE EL VALOR POR HORA TRABAJADA:" WITH NO
           ADVANCING.
           ACCEPT WS-VALOR-HORA.
       
       CALCULAR-SALARIOS SECTION.

           INGRESAR-HORAS-TRABAJADAS.
               DISPLAY "INGRESE LAS HORAS TRABAJADAS POR EL EMPLEADO:"
               WITH NO ADVANCING.
               ACCEPT WS-HORAS-TRABAJADAS.
    
           CALCULAR-SALARIO.
               COMPUTE WS-SALARIO = WS-VALOR-HORA * WS-HORAS-TRABAJADAS.
    
           MOSTRAR-SALARIO.
               DISPLAY "EL SALARIO DEL TRABAJADOR ES: "WS-SALARIO.
       
           EXIT SECTION.

       