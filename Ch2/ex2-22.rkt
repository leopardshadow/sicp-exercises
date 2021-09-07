#lang sicp

(define (square x) (* x x))

; Louis get a reverse list
(define (square-list-1 items)
  (define (iter things answer)
    (if (null? things)
      answer
      (iter (cdr things)
        (cons (square (car things))
        answer))))
  (iter items nil))

; nor this works
(define (square-list-2 items)
  (define (iter things answer)
    (if (null? things)
      answer
      (iter (cdr things)
        (cons answer
             (square (car things))))))
  (iter items nil))

; correct: use append instead of cons :)
(define (square-list-! items)
  (define (iter things answer)
    (if (null? things)
      answer
      (iter (cdr things)
        (append answer
             (list (square (car things)))))))
  (iter items nil))


(square-list-1 (list 1 2 3 4 5))
(square-list-2 (list 1 2 3 4 5))

(square-list-! (list 1 2 3 4 5))

