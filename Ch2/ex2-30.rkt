#lang sicp

(define (square x) (* x x))

(define (square-tree tree) (cond ((null? tree) nil)
                                 ((not (pair? tree)) (square tree))
                                 (else (cons (square-tree (car tree))
                                             (square-tree (cdr tree))  ))))

(define tree  (list 1
       (list 2 (list 3 4) 5)
       (list 6 7)))

(square-tree tree)

