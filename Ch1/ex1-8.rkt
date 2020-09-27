#lang sicp

(define (improve guess x)
  (average guess (/ x guess)))

(define (average x y)
  (/ (+ x y) 2))

(define (square x)
  (* x x))

(define (good-enough? guess x)
  (< (abs (- (square guess) x)) 0.001))

(define (sqrt-iter guess x)
  (if (good-enough? guess x)
      guess
      (sqrt-iter (improve guess x)
                 x)))

(define (sqrt x)
  (sqrt-iter 1.0 x))

;; should be 0.001, but the result becomes 0.03126...
;; the reason is that in 'good-enough', the precision is 0.001,
;; which is too big for this case
;; (sqrt 1e-6)

;; keeps running for a long time ...
;; (sqrt 1e100)

(define (new-good-enough? old-guess new-guess)
  (< (abs (/ (- old-guess new-guess) old-guess)) 0.001))

(define (new-sqrt-iter guess x)
  (let ((new-guess (improve guess x)))
  (if (new-good-enough? guess new-guess)
      guess
      (new-sqrt-iter new-guess
                 x))))

(define (new-sqrt x)
  (new-sqrt-iter 1.0 x))

(new-sqrt 1e-6)

;; almost immediately,
;; though the result is not that accurate
;; 1.000000633105179e+50
(new-sqrt 1e100)