%ifdef COMMENT
;;
;; NASM version 2.16.01
;; 0001multiples_of_3_or_5.asm
;; 
;; Copyright 2025 @GitHub JoergEm
;;
;; This program is WITHOUT ANY WARRANTY; without even the implied
;; warranty of MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.
;; 
%endif


section .data
    buffer db "Summe: ", 0              ; nullterminierte Ausgabe
    sumstr db 20 dup(0)                 ; Platz für Nummer in ASCII
    newline db 10                       ; Zeilenumbruch '\n'

section .bss
    sum resd 1                          ; Speicherplatz Summe

section .text
    global _start                       ; Label

_start:
    xor ecx, ecx                        ; Nummer auf 0
    xor eax, eax                        ; Summe auf 0

.loop:
    cmp ecx, 1000                       ; Schleife bis 1000
    jge .done                           ; Schleife Abbruch bei 1000

    mov eax, ecx                        ; kopiere Nummer nach eax
    xor edx, edx                        ; edx nullen
    mov ebx, 3                          ; mod 3
    div ebx                             ; Rest nach edx
    test edx, edx                       ; Rest=0?
    jz .add                             ; Wenn ja add zur Summe

    mov eax, ecx                        ; kopiere Nummer nach eax
    xor edx, edx                        ; edx nullen
    mov ebx, 5                          ; mod 5
    div ebx                             ; Rest nach edx
    test edx, edx                       ; Rest=0?
    jnz .next                           ; Wenn nein, nächste Nummer

.add:
    add dword [sum], ecx                ; Nummer zur Summe hinzufügen

.next:
    inc ecx                             ; Nummer erhöhen
    jmp .loop                           ; Schleife

.done:
    mov eax, [sum]                      ; Summe laden
    lea rsi, [rel sumstr + 19]          ; rsi ans Ende des Strings
    mov rcx, 10                         ; Dezimale Umwandlung

.convert_digit:
    xor rdx, rdx                        ; edx nullen
    div rcx                             ; Zehnerdivision
    add dl, '0'                         ; Rest in ASCII
    dec rsi                             ; Zeiger rücksetzen
    mov [rsi], dl                       ; Ziffer speichern
    test eax, eax                       ; Ziffern=0?
    jnz .convert_digit                  ; Wenn ja, Schleife

    ; Ausgabe: "Summe: "
    mov rax, 1                          ; syscall: write
    mov rdi, 1                          ; 1 = stdout
    lea rsi, [rel buffer]               ; Adresse von "Summe: "
    mov rdx, 7                          ; schreibe 7 Zeichen
    syscall

    ; Ausgabe: Summe 
    mov rax, 1
    mov rdi, 1
    lea rsi, [rel sumstr]              ; Startadresse Summe
    lea rdx, [rel sumstr + 20]         ; Endadresse Summe
    sub rdx, rsi                       ; berechne Länge der Summe
    syscall

    ; Zeilenumbruch
    mov rax, 1
    mov rdi, 1
    lea rsi, [rel newline]             ; Adresse von '\n'
    mov rdx, 1                         ; schreibe ein Byte 
    syscall

    ; Programm Ende
    mov rax, 60                        ; syscall: exit
    xor rdi, rdi                       ; return 0
    syscall
