(define (improve guess x)
  (/ (+ (/ x (* guess guess)) (* 2 guess)) 3))

(define (good-enough? prev-guess guess)
  (< (abs (- guess prev-guess)) 0.0001))

(define (cbrt-iter prev-guess guess x)
  (if (good-enough? prev-guess guess)
    guess
    (cbrt-iter guess (improve guess x)
      x)))

(define (cbrt x)
  (cbrt-iter 2.0 1.0 x))

(cbrt 8)