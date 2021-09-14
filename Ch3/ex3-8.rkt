#lang sicp

(define a -1)
(define (f x) (if (= a -1) (begin (set! a x) a) a))

(+ (f 0) (f 1)) ;0

(define b -1)
(define (g x) (if (= b -1) (begin (set! b x) b) b))

(+ (g 1) (g 0)) ;2