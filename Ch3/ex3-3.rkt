#lang sicp

(define (make-account balance passwd)
  (define (withdraw amount)
    (if (>= balance amount)
      (begin (set! balance (- balance amount))
              balance)
      "Insufficient funds"))
  (define (deposit amount)
    (set! balance (+ balance amount))
    balance)
  (define (dispatch p m)
    (if (eq? p passwd)
            (cond ((eq? m 'withdraw) withdraw)
                  ((eq? m 'deposit) deposit)
                  (else (error "Unknown request: MAKE-ACCOUNT"
                               m)))
            (lambda (x) 'Incorrect-passwd)))
  dispatch)

(define acc (make-account 100 'secret))

((acc 'passwd 'withdraw) 10)

((acc 'secret 'withdraw) 10)