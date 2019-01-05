;Factorial iterative
(defun (factorial2 n)
  (defun (iter product counter)
    (if (> counter n)
        product
        (iter (* counter product)
              (+ counter 1))))
  (iter 1 1))