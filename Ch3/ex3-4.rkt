#lang sicp

(define (make-account balance passwd)
  (let ((attempts 0))
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
            (begin (set! attempts 0)
                   (cond ((eq? m 'withdraw) withdraw)
                         ((eq? m 'deposit) deposit)
                         (else (error "Unknown request: MAKE-ACCOUNT"
                                       m))))
            (lambda (x) (begin (set! attempts (+ attempts 1))
                               (if (>= attempts 7) call-the-cops 'incorrect)))))
  (define call-the-cops 'call-the-cops)
  dispatch))

(define acc (make-account 100 'secret))
                                ;attempts
((acc 'incorrect 'withdraw) 10) ;1
((acc 'secret 'withdraw) 10)    ;0
((acc 'incorrect 'withdraw) 10) ;1
((acc 'incorrect 'withdraw) 10) ;2
((acc 'incorrect 'withdraw) 10) ;3
((acc 'incorrect 'withdraw) 10) ;4
((acc 'incorrect 'withdraw) 10) ;5
((acc 'incorrect 'withdraw) 10) ;6
((acc 'incorrect 'withdraw) 10) ;7 (call the cops)
((acc 'incorrect 'withdraw) 10) ;8 (call the cops)
((acc 'secret 'withdraw) 10)    ;0