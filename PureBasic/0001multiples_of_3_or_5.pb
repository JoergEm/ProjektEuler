;
; PureBasic 6.20
; 0001multiples_of_3_or_5.pb
; 
; Copyright 2025 @GitHub JoergEm
;
; This program is WITHOUT ANY WARRANTY; without even the implied
; warranty of MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.
;


Procedure.i multiples_of_3_or_5()
  Protected summe.i = 0
  Protected nummer.i
  For nummer = 1 To 999
    If nummer % 3 = 0 Or nummer % 5 = 0
      summe + nummer
    EndIf
  Next nummer
  ProcedureReturn summe
EndProcedure

Debug multiples_of_3_or_5()