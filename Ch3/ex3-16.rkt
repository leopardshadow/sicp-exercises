#lang sicp

(define (count-pairs x)
  (if (not (pair? x))
    0
    (+ (count-pairs (car x))
      (count-pairs (cdr x))
      1)))

; 3
;(count-pairs (list 1 2 3))
(count-pairs (cons 1 (cons 2 (cons 3 4))))

; 4
(define a (cons 1 2))
(define b (cons a a))
(define c (cons b 1))
(count-pairs c)

; 7
(define aa (cons 1 2))
(define bb (cons aa aa))
(define cc (cons bb bb))
(count-pairs cc)

; inf (using only 1 pair can generate loop
(define i (cons 1 2))
(set-cdr! i i)
(count-pairs i)