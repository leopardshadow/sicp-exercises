#lang sicp

(define (improve guess x)
  ( / (+ (/ x (square guess)) (* 2 guess)) 3))

(define (square x)
  (* x x))

(define (cube x)
  ((* x (* x x))))

(define (good-enough? guess x)
  (< (abs (- (cube guess) x)) 0.001))

(define (sqrt-iter guess x)
  (if (good-enough? guess x)
      guess
      (sqrt-iter (improve guess x)
                 x)))

(define (sqrt x)
  (sqrt-iter 1.0 x))


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

;;
(new-sqrt 1e-6)

(new-sqrt 1e90)