      $set sourceformat"free"
       IDENTIFICATION DIVISION.
       PROGRAM-ID. 0001multiplesof3or5.
       AUTHOR. Jörg M.
       INSTALLATION. @GitHub JoergEm.
       DATE-WRITTEN. 2025.
       SECURITY. VERSION.
      *>  This program is WITHOUT ANY WARRANTY;
      *>  without even the implied warranty of MERCHANTABILITY or
      *>  FITNESS FOR A PARTICULAR PURPOSE.


       ENVIRONMENT DIVISION.

       DATA DIVISION.
       WORKING-STORAGE SECTION.
       01  Summe          PIC 9(6) VALUE 0.
       01  Nummer         PIC 9(4) VALUE 1.

       PROCEDURE DIVISION.
       Begin.
           PERFORM UNTIL Nummer > 999
               IF FUNCTION MOD (Nummer, 3) = 0
                   ADD Nummer TO Summe
               END-IF
               IF FUNCTION MOD (Nummer, 5) = 0
                   ADD Nummer TO Summe
               END-IF
               IF FUNCTION MOD (Nummer, 15) = 0
                   SUBTRACT Nummer FROM Summe
               END-IF
               ADD 1 TO Nummer
           END-PERFORM.
           DISPLAY Summe.
           STOP RUN.
       END PROGRAM 0001multiplesof3or5.
