#lang racket

(define tree '(((() 5 ()) 10(() 15 ())) 20 ((() 25 ()) 30 (() 35 ()))))

(define (left_child bst)
  car bst)

(define (right_child bst)
  caddr bst)

(define (value bst)
  cadr bst)

(define (findval val bst)
  (cond
    [(null? bst) #f]
    [(equal? val (value bst)) #t]
  )
)