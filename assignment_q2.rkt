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

;D count_instances
;(define (count_instances item list)
 ; (cond ((null? list) 0)                 
  ;      ((equal? item (car list)) (+1 (count_instances item (cdr list))))))


(define (count_instances item list) 
  (cond ((null? list) 0) 
        ((equal? item (car list)) (+ 1 (count_instances item (cdr list)))) 
        ( (count_instances item (cdr list))) 
) 
)