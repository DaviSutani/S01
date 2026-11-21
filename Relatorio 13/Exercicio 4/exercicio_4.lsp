(defstruct dominio nome elemento dificuldade mora)

(defun bonus-elemental (elemento)
  (case elemento (:electro 1.5) (:hydro 1.2) (otherwise 1)))

(defun recompensa-final (d)
  (* (dominio-mora d) (bonus-elemental (dominio-elemento d))))

(defun descreve-dominio (d)
  (format nil "~a: ~,1f de mora" (dominio-nome d) (recompensa-final d)))

(defun rota (lista dificuldade-maxima)
  (let* ((possiveis (remove-if-not
    (lambda (d) (<= (dominio-dificuldade d) dificuldade-maxima)) lista))
    (textos (mapcar #'descreve-dominio possiveis)))
    textos))

(defun main ()
  (let ((dominios (list
    (make-dominio :nome "Cecilia Garden" :elemento :anemo :dificuldade 1 :mora 1000)
    (make-dominio :nome "Taishan Mansion" :elemento :pyro :dificuldade 2 :mora 1500)
    (make-dominio :nome "Court of Flowing Sand" :elemento :hydro :dificuldade 3 :mora 2000)
    (make-dominio :nome "Midsummer Courtyard" :elemento :electro :dificuldade 4 :mora 2500)
    (make-dominio :nome "Peak of Vindagnyr" :elemento :cryo :dificuldade 5 :mora 3000))))
    (format t "Paimon: Viajante, da pra enfrentar esses dominios ate a dificuldade 3!~%")
    (dolist (texto (rota dominios 3))
    (format t "~a~%" texto))
    (format t "~%Paimon: Se a gente limpar todos os dominios de Teyvat...~%")
    (format t "Total de mora: ~,1f~%" (reduce #'+ (mapcar #'recompensa-final dominios)))
    (format t "~%Paimon: E se a gente mudasse a recompensa? Olha so!~%")
    (let ((copia (copy-dominio (car dominios))))
    (setf (dominio-mora copia) 5000)
    (format t "Mora da copia alterada com setf: ~a~%" (dominio-mora copia))
    (format t "Mora do dominio original: ~a~%" (dominio-mora (car dominios))))))

(main)