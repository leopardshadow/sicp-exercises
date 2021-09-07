#lang sicp

; retuen the last element of a "non-empty" list
(define (last-pair l)
  (define (last-pair-aux xs last) (if (null? xs) last (last-pair-aux (cdr xs) (car xs))))
  (last-pair-aux l 0))


(define (last-pair-aux xs last) (if (null? xs) last (last-pair-aux (cdr xs) (car xs))))

(last-pair (list 23 72 149 34))