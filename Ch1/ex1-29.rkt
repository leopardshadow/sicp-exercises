#lang sicp

(define (cube x) (* x x x))

(define (sum term a next b)
  (if (> a b)
    0
    (+ (term a)
      (sum term (next a) next b))))

(define (integral f a b dx)
  (define (add-dx x)
    (+ x dx))
  (* (sum f (+ a (/ dx 2.0)) add-dx b)
    dx))

(integral cube 0 1 0.01)
(integral cube 0 1 0.001)

(define k 10)

(define (integral-simpson f a b n)
  (define h (/ (- b a) n))
  (define (plus-1 x) (+ x 1))
  (define (cal k)
    (* (cond ((= k 0) 1)
             ((= k n) 1)
             ((= (remainder k 2) 0) 2)
             (else 4))
       (f (+ a (* k h)))))
  (* (sum cal 0 plus-1 n)
     (/ h 3))
)

(integral-simpson cube 0 1 100)
(integral-simpson cube 0 1 1000)


