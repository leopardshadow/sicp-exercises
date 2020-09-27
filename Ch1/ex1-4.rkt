#lang sicp

(define (a-plus-abs-b a b)
  ((if (> b 0) + -) a b))

;; a + b 的絕對值
;; 如果 b > 0, a 加上 b
;; 否則 a 減掉 b