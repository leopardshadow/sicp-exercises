#lang sicp

(define (p) (p))

(define (test x y)
  (if (= x 0)
      0
      y))

(test 0 (p))

;; the program keeps running

;; if normal order,
;; the result would be 0 ;
;; if applicative order,
;; the program tries to evaluate p and keeps running


