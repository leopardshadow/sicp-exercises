#lang sicp

; retuen the last element of a "non-empty" list
(define (last-pair l)
  (define (last-pair-aux xs last) (if (null? xs) last (last-pair-aux (cdr xs) (car xs))))
  last-pair-aux l 0)


(define (last-pair-aux xs last) (if (null? xs) last (last-pair-aux (cdr xs) (car xs))))

(define l (list 23 72 149 34))
(last-pair-aux l 0)

; the 0 here is the last element of an empty list

; why??? QQ
(last-pair l)
(last-pair (list 23 72 149 34))