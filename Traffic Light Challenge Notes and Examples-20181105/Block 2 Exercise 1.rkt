#lang racket

(define palindrome? (λ (x)
                      (cond
                        ((equal? (length x) 1) #t)
                        ((equal? (first x) (last x)) (palindrome? (reverse (rest (reverse (rest x)))))) ;otato
                        (#t #f))))

(define duplicator-proto (λ (x y)
                           (cond
                             ((empty? x) '())
                             (#t (cons (first x) (cons (first x) (duplicator-proto (rest x) y)))))))

(define duplicator (λ (x) (duplicator-proto x '())))