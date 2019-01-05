;Helper functions
(defun (abs x)
  (cond ((> x 0) x)
        ((= x 0) 0)
        ((< x 0) (- x))))

(defun (improve guess x)
  (average guess (/ x guess)))

(defun (average x y)
  (/ (+ x y) 2))

(defun (good-enough? guess x)
  (< (abs (- (square guess) x)) 0.00000001))

(defun (sqrt-iter guess x)
    (if (good-enough? guess x)
        guess
        (sqrt-iter (improve guess x)
                    x)))

;Square approximation using newtons method
(defun (sqrt x)
  (sqrt-iter 1.0 x))