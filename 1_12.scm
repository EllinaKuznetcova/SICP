(define (pascal_elem c r)
  (if (or (= r 1) (= c 1) (= c r))
    1
    (+ (pascal_elem (- c 1) (- r 1)) (pascal_elem c (- r 1)))))

(pascal_elem 3 3)

(pascal_elem 3 4)

(pascal_elem 2 4)

(pascal_elem 2 5)