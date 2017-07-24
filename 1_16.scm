(define (fast_expt b n result)
  (cond ((= n 0) result)
    ((even? n) (fast_expt (square b) (/ n 2) result))
    (else (fast_expt b (- n 1) (* result b)))))

(define (even? n)
  (= (remainder n 2) 0))

(define (square n)
  (* n n))

(fast_expt 2 10 1)

(fast_expt 3 3 1)

(fast_expt 4 7 1)