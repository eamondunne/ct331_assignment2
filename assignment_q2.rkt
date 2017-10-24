#lang racket

;Provide Functions
(provide ins_beg)
(provide ins_end)

;A
(define (ins_beg el lst)
  (cons el lst))

;B
(define (ins_end el lst)
  (append lst (list el)))
