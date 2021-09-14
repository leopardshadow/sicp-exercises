#lang sicp

(define (make-accumulator init-value)
  (let ((value init-value))
    (lambda (delta) (begin (set! value (+ value delta))
                           value))))

(define A (make-accumulator 5))
(A 10)
(A 10)

(define B (make-accumulator 0))
(B 10)
(B 10)