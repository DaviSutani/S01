(defstruct erva
  nome
  preco-por-grama
  toxicidade)

(defun classifica-erva (erva)
  (cond ((>= (erva-toxicidade erva) 7) "veneno")
        ((>= (erva-toxicidade erva) 4) "use com cuidado")
        (t "segura")))

(defun preco-da-dose (erva gramas)
  (* (erva-preco-por-grama erva) gramas))

(defun descreve-erva (erva)
  (format nil "~a - R$~,2f por grama - ~a"
          (erva-nome erva)
          (erva-preco-por-grama erva)
          (classifica-erva erva)))

(defun aviso (erva)
  (if (>= (erva-toxicidade erva) 7)
      "ALERTA: Maomao vai testar esta erva em si mesma antes!"
      "Liberada para o paciente!"))

(defun main ()
  (let ((ervas
          (list
           (make-erva :nome "Talo de Melao"
                      :preco-por-grama 12.5 :toxicidade 1)
           (make-erva :nome "Ginseng"
                      :preco-por-grama 16.0 :toxicidade 6)
           (make-erva :nome "Artemisia"
                      :preco-por-grama 45.0 :toxicidade 9))))

    (format t "Estoque:~%")
    (dolist (e ervas)
      (format t "~a~%" (descreve-erva e))
      (format t "  ~a~%" (aviso e)))

    (format t "Preco de UMA dose: ")
    (format t "~a, 4 gramas: R$~,2f~%"
            (erva-nome (car ervas))
            (preco-da-dose (car ervas) 4))))

(main)