#lang sicp
(define (addBigger2Of3 x y z)
  (cond
    ((and (<= x y) (<= x z)) (+ y z))  ; x is the smallest
    ((and (<= y x) (<= y z)) (+ x z))  ; y is the smallest
    ((and (<= z x) (<= z y)) (+ x y))  ; z is the smallest
  )
)