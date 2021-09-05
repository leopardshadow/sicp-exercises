#lang sicp

(define (sum-recursive term a next b)
  (if (> a b)
    0
    (+ (term a)
      (sum-recursive term (next a) next b))))

(define (sum-iter term a next b)
  (define (iter a result)
    (if (> a b)
        result
        (iter (next a) (+ result (term a)))))
  (iter a 0))

(define (square x) (* x x))

(define (plus-1 x) (+ x 1))

(sum-recursive square 1 plus-1 5)
(sum-iter square 1 plus-1 5)