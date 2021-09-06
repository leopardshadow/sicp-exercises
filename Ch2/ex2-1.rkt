#lang sicp

(define (print-rat x)
  (newline)
  (display (numer x))
  (display "/")
  (display (denom x)))

(define (numer x) (car x))

(define (denom x) (cdr x))

(define (make-rat n d) (cons (if (> (* n d) 0) (abs n) (- (abs n))) (abs d)))


(print-rat (make-rat 1 2))

(print-rat (make-rat -1 2))

(print-rat (make-rat 1 -2))

(print-rat (make-rat -1 -2))

