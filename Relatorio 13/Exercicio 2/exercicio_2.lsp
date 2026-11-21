(defstruct criatura
  nome
  bioma
  profundidade
  perigo)

(defparameter *catalogo*
  (list
   (make-criatura :nome "Peeper" :bioma "Safe Shallows" :profundidade 15 :perigo :inofensiva)
   (make-criatura :nome "Stalker" :bioma "Kelp Forest" :profundidade 40 :perigo :agressiva)
   (make-criatura :nome "Reaper Leviathan" :bioma "Crash Zone" :profundidade 70 :perigo :leviata)
   (make-criatura :nome "Sand Shark" :bioma "Grassy Plateaus" :profundidade 110 :perigo :agressiva)
   (make-criatura :nome "Crabsquid" :bioma "Blood Kelp" :profundidade 300 :perigo :agressiva)
   (make-criatura :nome "Ghost Leviathan" :bioma "Grand Reef" :profundidade 480 :perigo :leviata)))
(defun texto-do-perigo (perigo)
  (case perigo
    (:inofensiva "Inofensiva")
    (:agressiva  "Agressiva")
    (:leviata    "Leviata: mantenha distancia")
    (otherwise   "Desconhecido")))

(defun descreve-criatura (c)
  (let ((perigo (texto-do-perigo (criatura-perigo c))))
    (format nil "[ALERTA!!!] ~a | Bioma: ~a | Profundidade: ~am | Ameaca: ~a"
            (criatura-nome c)
            (criatura-bioma c)
            (criatura-profundidade c)
            perigo)))

(defun abaixo-de (metros catalogo)
  (remove-if-not (lambda (c) (> (criatura-profundidade c) metros)) catalogo))

(defun main ()
  (format t "PDA: Scanner de mao ativado. Banco de dados da fauna de 4546B:~%")
  (dolist (texto (mapcar #'descreve-criatura *catalogo*))
    (format t "~a~%" texto))

  (let ((fundas (abaixo-de 100 *catalogo*)))
    (format t "~%PDA: Alerta de profundidade! Formas de vida abaixo de 100m:~%")
    (dolist (texto (mapcar #'descreve-criatura fundas))
      (format t "~a~%" texto))
    (format t "PDA: ~a formas de vida detectadas na zona profunda. Monitore seu oxigenio.~%"
            (length fundas))))

(main)