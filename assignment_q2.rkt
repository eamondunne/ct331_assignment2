#lang racket

;Provide Functions
(provide ins_beg)
(provide ins_end)
(provide count_top_level)
(provide count_instances)

;A
(define (ins_beg el lst)
  (cons el lst))

;B
(define (ins_end el lst)
  (append lst (list el)))

;C
(define (count_top_level list)
  (cond ((null? list) 0)
      ((not (pair? list)) 1)
      (else (+ (count_top_level (car list))
                 (count_top_level (cdr list))))
      )
)

;D
(define (count_instances item list) 
  (cond ((null? list) 0) 
        ((equal? item (car list)) (+ 1 (count_instances item (cdr list)))) 
        ((count_instances item (cdr list))) 
        ) 
)

;E
(define (count_instances_tr el lst)
  (tinst el 0 lst)
 )

(define (tinst el total lst)
  (cond ((null? lst)0)
        ((equal? el (car lst))(+ 1 total(tinst el total (cdr lst))))
        ((tinst el total (cdr lst)))
    )
)

;F
(define (count_instances_deep el lst)
  (cond [(empty? lst) 0]
        [(list? (car lst)) (+ (count_instances_deep el (car lst)) (count_instances_deep el (cdr lst)))]
        [(equal? el (car lst)) (+ 1 (count_instances_deep el (cdr lst)))]
        [else (count_instances_deep el (cdr lst))]))