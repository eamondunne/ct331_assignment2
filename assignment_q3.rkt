#lang racket

;Working Tree
(define tree '(((() 5 ()) 10(() 15 ())) 20 ((() 25 ()) 30 (() 35 ()))))

;Get Left Child
(define (left_child bst)
  (car bst))

;Get Right Child
(define (right_child bst)
  (caddr bst))

;Get Current Value
(define (value bst)
  (cadr bst))

;A: In-Order Traverse
(define (inorder tree)
  (if (null? tree)
      '()
      (append (inorder (left_child tree))
      (list (value tree))
      (inorder (right_child tree)))
      )
  )

;B: See If Value Exists
(define (findval val bst)
  (cond
    [(null? bst) #f]
    [(equal? val (value bst)) #t]
    [(< val (value bst)) (findval val (left_child bst))]
    [(> val (value bst)) (findval val (right_child bst))]
  )
)

;C: Insert an item correctly into a list representing a binary search tree. Your function should take an item and a tree as inputs.
(define (insert val bst)
  (cond
    [(null? (value bst))] ;Insert here
    [(equal? val (value bst)) #t]
    [(< val (value bst)) (insert val (left_child bst))]
    [(> val (value bst)) (insert val (right_child bst))]
    )
)