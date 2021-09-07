#lang sicp

; they are different
(cons 1 2)
(list 1 2)

(pair? (cons 1 2))

(pair? (cons 1 nil))

(pair? (list 1 2))

(pair? (list 1))

(pair? nil)