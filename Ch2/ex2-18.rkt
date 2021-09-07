#lang sicp

(define (reverse l) (if (null? l) nil (cons (reverse (cdr l)) (car l))))

(reverse (list 1 4 9 16 25))

(list 1 4 9 16 25)