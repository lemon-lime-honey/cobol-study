       IDENTIFICATION DIVISION.
       PROGRAM-ID. SAMPLE.

       DATA DIVISION.
       WORKING-STORAGE SECTION.
       01 HOURLY-PAY   PIC 9(5).
       01 WORKING-HOUR PIC 9(2).
       01 PAY          PIC 9(7).

       PROCEDURE DIVISION.
           DISPLAY "Enter your hourly pay: " WITH NO ADVANCING.
           ACCEPT HOURLY-PAY.
           DISPLAY "Enter your working hour: " WITH NO ADVANCING.
           ACCEPT WORKING-HOUR.

           COMPUTE PAY = HOURLY-PAY * WORKING-HOUR.
           DISPLAY "Your pay is: " PAY.
           STOP RUN.
