#lang racket

;; exercise 1.8

(define (qbrt-iter guess x)
  (if (good-enough? guess x)
      guess
      (qbrt-iter (improve guess x) x)))

(define (improve guess x)
  (average guess (/ (+ (/ x (* guess guess)) (* 2 guess)) 3)))

(define (average x y) (/ (+ x y) 2))

(define (good-enough? guess x)
  (< (abs (- (improve guess x) guess)) (* guess .001)))

(define (square x)
  (* x x))

(define (qbrt x) (qbrt-iter 1.0 x))

(qbrt 27.0)
