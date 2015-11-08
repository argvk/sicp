#lang racket

;; pascal x y gives the value at position x,y
(define (pascal x y) 
  (print x)
  (print y)
  (cond ((= y 1) 1)
        ((= x y) 1)
        (else (+ 
                (pascal (- x 1) (- y 1)) 
                (pascal (- x 1) y)
                ))))

(pascal 7 6)
