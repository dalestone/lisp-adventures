;Helper functions
(defun (abs x)
  (cond ((> x 0) x)
        ((= x 0) 0)
        ((< x 0) (- x))))

(defun (cube x) (* x x x))

(defun (good-enough-cube? guess x)
  (< (abs (- (cube guess) x)) 0.00000001))

(defun (improve-cube guess x)
  (/ (+ (/ x (* guess guess)) (* 2 guess)) 3))

(defun (cubert-iter guess x)
  (if (good-enough-cube? guess x)
      guess
      (cubert-iter (improve-cube guess x)
                 x)))

;Cube approximation using newtons formula
(defun (cubert x)
  (cubert-iter 1.0 x))