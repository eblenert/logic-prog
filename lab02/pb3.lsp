(defun exista (el l)
    (if (null l)
        (if (eq (cal l) el)
            T
            (exista el (cdr l))
        )
    )
)

(defun reuniune (l1 l2 acc)
    (if (exista (car l1) l2)
        
