       IDENTIFICATION DIVISION.
       PROGRAM-ID. SAMPLE.

       DATA DIVISION.
       WORKING-STORAGE SECTION.
       01 NAME    PIC A(20).
       01 AGE     PIC 9(3).
       01 SALARY  PIC 9(6).
       01 TAX     PIC 9(6)V99.

       PROCEDURE DIVISION.
           DISPLAY "Variable Test Program".
           DISPLAY "Enter the name: " WITH NO ADVANCING.
           ACCEPT NAME.

           DISPLAY "Enter the age: " WITH NO ADVANCING.
           ACCEPT AGE.

           DISPLAY "Enter the salary: " WITH NO ADVANCING.
           ACCEPT SALARY.

           COMPUTE TAX = SALARY * 0.1.

           DISPLAY "--------------------".
           DISPLAY "NAME: " NAME.
           DISPLAY "AGE: " AGE.
           DISPLAY "SALARY: " SALARY.
           DISPLAY "TAX(10%): " TAX.
           STOP RUN.
