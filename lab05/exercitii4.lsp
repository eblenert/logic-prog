(defun lista-asoc (l)
    (do ((l1 l (cdr l1))
        (rez nil (append rez (list (caar l1)))))
        ((endp l1) rez)
    )
)

(lista-asoc '((a . 1) (b . 2) (c . 3 )))