#lang sicp

(define (print-point p)
  (newline)
  (display "(")
  (display (x-point p))
  (display ",")
  (display (y-point p))
  (display ")"))

; points
(define (make-point x y) (cons x y))
(define (x-point p) (car p))
(define (y-point p) (cdr p))

; print point example
(define p (make-point 1 2))
(define q (make-point 5 6))
(print-point p)

; segments
(define (make-segment p q) (cons p q))
(define (start-segment s) (car s))
(define (end-segment s) (cdr s))

; midpoint-segment
(define (midpoint-segment s) (make-point (/ (+ (x-point (start-segment s)) (x-point (end-segment s))) 2) (/ (+ (y-point (start-segment s)) (y-point (end-segment s))) 2)))

; demo midpoint
(define seg (make-segment p q))
(define m-point (midpoint-segment seg))
(print-point m-point)