(define (average x y)
  (/ (+ x y) 2))

(define (improve guess x)
  (average guess (/ x guess)))

(define (good-enough? prev-guess guess)
  (< (abs (- guess prev-guess)) 0.001))

(define (sqrt-iter prev-guess guess x)
  (if (good-enough? prev-guess guess)
    guess
    (sqrt-iter guess (improve guess x)
      x)))

(define (sqrt x)
  (sqrt-iter 2.0 1.0 x))

(sqrt 100000)