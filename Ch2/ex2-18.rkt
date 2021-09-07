#lang sicp

(define (reverse l) (if (null? l) nil (append (reverse (cdr l)) (list (car l)))))

(reverse (list 1 4 9 16 25))

(list 1 4 9 16 25)