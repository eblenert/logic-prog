(defun putere (x y)
  (if (eq 0 y)
    1
    (if (eq 1 y)
      x
      (if (< y 0)
        (putere (/ 1 x) (* -1 y))
        (* x (putere x (- y 1)))
      )
    )
  )
)
