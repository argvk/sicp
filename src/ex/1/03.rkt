#lang racket

(define (largest-sum-of-squares x y z) 
  (apply + (map  
             (lambda (a) (* a a)) 
             (take (sort (list x y z) >) 2))))

(largest-sum-of-squares 9 2 1)
