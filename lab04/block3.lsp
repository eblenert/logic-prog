;; (block nume_block3
;;     (setq x 1)
;;     (print (1+ x))
;;     (return-from nume_block3 (1+ x))
;;     (print 4)
;; )

;; (block nume_block31
;;     (setq x 1)
;;     (print (1+ x))
;;     (setq x (1+ x))
;;     (return-from nume_block31 (1+ x))
;;     (print 4)
;; )

;; (dolist (x '(1 2 3 )))

;; (dolist (x '(1 2 3)) (print x))

;; (dolist (x '(2 3 -7 5))
;;     (print x)
;;     (if (< x 0)
;;         (return 'gata)
;;     )
;; )
;; (setq z 1)
;; (tagbody again
;;     (setq z (1+ z))
;;     (print z)
;;     (if (< z 100)
;;         (go again)
;;         (go end)
;;     )
;;     end
;;     (print z)
;; )
;; (tagbody reia
;;     (print 'Introduceti>)
;;     (if (plusp (read))
;;         (go reia)
;;         'gata
;;     )
;; )

;; (progn 10 (print 20) 30 (values 10 20 30))

;;(prog2 'la (values 2 3 4) 9)

;; (let ((x 1) (y 2) (z 3)) (setq w (+ x y z)) (list x y z w))

;; (prog (i (suma 0))
;;     reia
;;     (print 'Introduceti>)
;;     (setq i (read))
;;     (if (> i 0)
;;         (progn (setq suma (+ suma i)) (go reia))
;;         (return suma)
;;     )
;; )

;; (defun printare (start sfarsit)
;;     (do ((i start (1+ i)))
;;         ((> i sfarsit))
;;         (print i)
;;     )
;; )
;; (defun factorial (n)
;;     (do* ((i 1 (1+ i))
;;         (rezultat 1 (* rezultat i)))
;;         ((= i n) rezultat)
;;     )
;; )

(defun cmmdc (a b)
    (do ((= a1 a) (= b1 b)
        (
            (if (> a b)
                (setq a (- a b))
                (setq b (- b a))
            )
        ))
        ((= a b) a)
    )
)