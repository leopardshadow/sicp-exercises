#lang sicp

(define l1 (list 1 3 (list 5 7) 9))
l1
(car (cdr (car (cdr (cdr l1)))))

(define l2 (list (list 7)))
l2
(car (car l2))

(define l3 (list 1 (list 2 (list 3 (list 4 (list 5 (list 6 7)))))))
l3
(car (cdr (cadr (cadr (cadr (cadr (cadr l3)))))))