#lang racket

;; exercise 1.3

(define (tbss-1 x y z)
  (define (sqsum a b)
    (+ (* a a) (* b b)))
  (if (>= x y)
      (sqsum
       x
       (if (>= y z)
           y
           z))
      (sqsum
       y
       (if (>= x z)
           x
           z))))

(define (tbss-2 x y z) 2)
