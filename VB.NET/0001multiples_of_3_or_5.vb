REM 
REM .NET VERSION 7.0.410
REM 0001multiples_of_3_or_5.vb
REM 
REM Copyright 2025 @GitHub JoergEm
REM 
REM This program is WITHOUT ANY WARRANTY; without even the implied
REM warranty of MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.
REM 

Module Module1
    Sub Main()
        Dim summe As Integer = 0
        For nummer As Integer = 1 To 999
            If nummer Mod 3 = 0 Or nummer Mod 5 = 0 Then
                summe += nummer
            End If
        Next
        Console.WriteLine(summe)
    End Sub
End Module