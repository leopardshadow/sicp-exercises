#lang sicp

;;(define (+ a b)
;;  (if (= a 0)
;;      b
;;      (inc (+ dec a) b)))

;; (+ 4 5)
;; (inc (+ 3 5))
;; (inc (+ 2 5))
;;  ...
;; (i(i(i(i(5)))))
;; (i(i(i(6))))
;;  ...
;; 9
;; recursive (?
;;=============================

;;(define (+ a b)
;;  (if (= a 0)
;;      b
;;      (+ (dec a) (inc b))))
;; (+ 4 5)
;; (+ 3 6)
;; (+ 2 7)
;; ...
;; (+ 0 9)
;; 9
;; more iterative (?