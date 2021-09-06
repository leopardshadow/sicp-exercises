#lang sicp

(define (print-rat x)
  (newline)
  (display (numer x))
  (display "/")
  (display (denom x)))

(define (numer x) (car x))

(define (denom x) (cdr x))

(define (make-normal r) (let ((n (car r)) (d (cdr r))) (cons (if (> (* n d) 0) (abs n) (- (abs n))) (abs d))))

(define (make-rat n d)
  (let ((g (gcd n d)))
    (make-normal (cons (/ n g) (/ d g)))))

(print-rat (make-rat 1 2))

(print-rat (make-rat -1 2))

(print-rat (make-rat 1 -2))

(print-rat (make-rat -1 -2))

(print-rat (make-rat -2 -2))