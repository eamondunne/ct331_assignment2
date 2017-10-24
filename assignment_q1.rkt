#lang racket

; cons pair of two numbers
(define cons_pair(cons 1 2))

; a list of 3 numbers, using only the cons function
(define cons_list(cons 1 (cons 2 3)))

; list containing a string, a number & a nested list of three numbers, using only the cons function
(define cons_list2(cons "CONST" (cons 9 (cons 8 (cons 7 6 )))))

; A list containing a string, a number and a nested list of three numbers, using only the list function.
(define list_list(list "LIST" 9 (list 8 7 6)))

;A list containing a string, a number and a nested list of three numbers, using only the append function
(define append_list(append '(APPEND) '(9) '((8 7 6))))