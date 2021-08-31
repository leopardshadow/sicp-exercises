#lang sicp

(define (square x) (* x x))

(define (fast-exp n e)
  (fast-exp-iter 1 1 e n))

(define (fast-exp-iter prod exp2 e ne)
  (if (> exp2 e)
      prod
      (if (= 0 (BITWISE-AND exp2 e))
        (fast-exp-iter (* prod ne) (* 2 exp2) e (square ne))
        (fast-exp-iter prod (* 2 exp2) e (square ne)))))

(fast-exp 1 0)
(fast-exp 2 0)
(fast-exp 2 1)
(fast-exp 2 2)
(fast-exp 2 3)
(fast-exp 2 4)

(logand 20 1)