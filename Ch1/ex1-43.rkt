#lang sicp

(define (square x) (* x x))

(define (id x) x)

(define (compose f g) (lambda (x) (f (g x))))

(define (repeated-recur f n) (cond  ((= n 0) id)
                              ((= n 1) f)
                               (else  (compose f (repeated-recur f (- n 1))))))



(define (repeated-iter f n)
  (define (repeated-iter-aux k result-f) (if (= k 0) result-f
                                                       (compose f (repeated-iter-aux (- k 1) result-f))))
  (repeated-iter-aux f n id))

((repeated-recur square 2) 5)

((repeated-recur square 2) 5)