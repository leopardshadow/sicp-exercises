#lang sicp

;; recursive
(define (f-recursive n)
  (if (< n 3)
      n
      (+ (f-recursive (- n 1)) (* 2 (f-recursive (- n 2))) (* 3 (f-recursive (- n 3))))))

(f-recursive 1)
(f-recursive 2)
(f-recursive 3)
(f-recursive 4)
(f-recursive 5)
(f-recursive 6)
(f-recursive 7)


;;iterative
(define (f n)
  (if (< n 3)
      n
      (f-iter 0 1 2 3 n)))

(define (f-iter n-3 n-2 n-1 i n)
  (if (> i n)
      n-1
      (f-iter n-2 n-1 (+ n-1 (* 2 n-2) (* 3 n-3)) (+ i 1) n)))

(f 1)
(f 2)
(f 3)
(f 4)
(f 5)
(f 6)
(f 7)