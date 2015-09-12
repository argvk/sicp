#lang racket

(define (improve guess x)
  (average guess (/ x guess)))

(define (average x y)
  (/ (+ x y) 2))

(define (good-enough? guess x)
  (< (abs (- (improve guess x) guess)) 
     (* guess 0.001)))

(define (sqrt-iter guess x)
  (if (good-enough? guess x)
          guess
          (sqrt-iter (improve guess x)
                     x)))

(define (sqrt x)
  (sqrt-iter 1.0 x))

(sqrt 4609187881)

;; this improves the approximation for smaller numbers, 
;; but skews the approximation for larger numbers
;; (sqrt 96100)
#| karthik$ racket 06.rkt
310.00000000206904
karthik$ racket 07.rkt
310.00113261319785
|#
;; (sqrt 0.0001)
#| karthik$ racket 06.rkt
0.03230844833048122
karthik$ racket 07.rkt
0.010000714038711746
|#
;;(sqrt 4609187881)
#|karthik$ racket 06.rkt
67891.00000000521
karthik$ racket 07.rkt
67951.1446464085
|#
