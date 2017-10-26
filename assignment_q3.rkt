#lang racket

;Working Tree
(define tree '(((() 5 ()) 10(() 15 ())) 20 ((() 25 ()) 30 (() 35 ()))))
;(define newTree '(((()())(()()))((()())(()()))))

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

;C: Insert an item correctly into a list representing a binary search tree.
(define (insert val bst)
  (cond
    [(null? bst) (insertEl val bst)]  ;Insert here
    [(equal? val (value bst)) #t]
    [(< val (value bst)) (insert val (left_child bst))]
    [(> val (value bst)) (insert val (right_child bst))]
    )
)

;Can't get this working properly at all, but know I'm close
(define (insertEl val bst)
  (cons '() (cons val cons('() bst)))
  (append '() bst '() val)
)

;Parts D and E rely on a working part C which I don't have however I feel like my logic is right.

;D. Take a list of items and insert them into a binary search tree.
(define (treeList lst)
  (insert (car lst) '())
  (treeList (cdr lst))
)
;E. Implement a tree-sort algorithm. Your function should take a list of items and display them in sorted order.
(define (treesort lst)
  (inorder(treeList lst))
)

;F. Implement a higher order version of the tree-sort function that takes a list and a function that determines the sorted order.
;   For example, write a version that sorts the list in ascending, descending and ascending based on last digit.
