#lang racket

(define (improve guess x)
  (average (/ x (* guess guess)) (* 2 guess)))

(define (average x y)
  (/ (+ x y) 3))

(define (good-enough? guess x)
  (< (abs (- (improve guess x) guess)) 
     (* guess 0.001)))

(define (cube-iter guess x)
  (if (good-enough? guess x)
      guess
      (cube-iter (improve guess x)
                 x)))

(define (cubrt x)
  (cube-iter 1.0 x))

(cubrt 0.001)
(cubrt 9)
(cubrt 312922374428971)
