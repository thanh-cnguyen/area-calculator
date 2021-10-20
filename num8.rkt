#lang racket/base
(require racket/math)

(define (circ x)
        (* (sqr (cadr x)) pi))

(define (rect x)
        (* (cadr x) (caddr x)))

(define (tri x)
        (/ (* (cadr x) (caddr x)) 2))

(define (area x)
    (cond [(eq? (car x) 'circle) (circ x)]
            [(eq? (car x) 'rectangle) (rect x)]
            [(eq? (car x) 'triangle) (tria x)]
            [-1]))

(display "By Thanh Nguyen\n")
(area '(circle 2. 4. 5.)) 
(area '(rectangle 2. 4. 5.)) 
(area '(triangle 2. 4. 5.))
(area '(haha 2. 4. 5.)) 