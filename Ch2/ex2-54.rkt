#lang sicp

(define (equal?? a b) (if (and (not (pair? a)) (not (pair? b))) (eq? a b)
                           (and (equal? (car a) (car b)) (equal? (cdr a) (cdr b)))))

(equal?? '(this is a list) '(this is a list))

(equal?? '(this is a list) '(this (is a) list))


