#lang sicp

(define (square x) (* x x))

(define (square-list items)
  (map square items))


(define (square-list-2 items)
  (if (null? items)
    nil
    (cons (square (car items)) (square-list-2 (cdr items)))))

(square-list (list 1 2 3 4))
(square-list-2 (list 1 2 3 4))