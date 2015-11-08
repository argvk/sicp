#lang racket

(define (rF n)
  (if (< n 3) 
    n
    (+ (rF (- n 1)) 
      (* 2 (rF (- n 2))) 
      (* 3 (rF (- n 3)))
      )))

(rF 9)
(rF 3)

(define (iter a b c n)
  (if (= n 0)
    a
    (iter b c (+ c (* 2 b) (* 3 a)) (- n 1))))

(define (iterF n)
  (iter 0 1 2 n))

(iterF 9)
(iterF 3)
