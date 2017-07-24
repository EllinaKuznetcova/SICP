(define (f_rec n)
  (if (< n 3)
    n
    (+ (f_rec (- n 1)) (f_rec (- n 2)) (f_rec (- n 3)) )))

(f_rec 4)

(f_rec 2)

(f_rec 5)

(define (f_iter n)
  (if (< n 3)
    n
    (f_iter_helper 2 1 0 (- n 3) )))

(define (f_iter_helper p_val p_p_val p_p_p_val n)
  (if (= n 0)
    (+ p_val p_p_val p_p_p_val)
    (f_iter_helper (+ p_val p_p_val p_p_p_val) p_val p_p_val (- n 1))))

(f_iter 4)

(f_iter 2)

(f_iter 5)