#lang sicp

(define (make-monitored f)
  (let ((calls 0))
    (lambda (arg)
          (cond ((eq? arg 'reset-count) (begin (set! calls 0) 0))
                ((eq? arg 'how-many-calls?) (begin (set! calls (+ calls 1)) calls))
                (else (f arg))))))

(define s (make-monitored sqrt))
(s 100)
(s 'how-many-calls?)
(s 100)
(s 100)
(s 'how-many-calls?)
(s 'reset-count)
(s 'how-many-calls?)