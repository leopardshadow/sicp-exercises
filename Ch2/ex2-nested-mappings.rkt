#lang sicp

; change to "prime" later
(define (prime? n) (= 0 (remainder n 2)))

(prime? 10)
(prime? 11)

;
(define (enumerate-interval low high)
  (if (> low high)
    nil
    (cons low (enumerate-interval (+ low 1) high))))
(enumerate-interval 2 7)

;
(define (gen-i-seq n) (enumerate-interval 1 n))
(gen-i-seq 10)

;(define (make-sum-pairs n) ())

;(define (prime-sum-pairs n) ())