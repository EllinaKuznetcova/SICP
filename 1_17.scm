(define (* a b)
  (if (= b 0)
    0
    (+ a (* a (- b 1)))))

(define (double a)
  (+ a a))

(define (halve a)
  / a 2)