(defun inversa (l)
    (if (null l)
        nil
        (append (inversa (cdr l)) (list (car l)))
    )
)
