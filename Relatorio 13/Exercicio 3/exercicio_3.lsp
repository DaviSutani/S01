(defstruct garota-magica nome escuridao bruxas)

(defun escuridao-total (grupo)
  (if (null grupo) 0
      (+ (garota-magica-escuridao (car grupo)) (escuridao-total (cdr grupo)))))

(defun total-de-bruxas (grupo)
  (reduce #'+ (mapcar #'garota-magica-bruxas grupo)))

(defun purifica (g quantidade)
  (let ((escuridao (garota-magica-escuridao g)))
    (make-garota-magica :nome (garota-magica-nome g) :bruxas (garota-magica-bruxas g)
      :escuridao (if (>= quantidade escuridao) 0 (- escuridao quantidade)))))

(defun main ()
  (let* ((grupo (list
    (make-garota-magica :nome "Sayaka" :escuridao 80 :bruxas 5)
    (make-garota-magica :nome "Madoka" :escuridao 10 :bruxas 3)
    (make-garota-magica :nome "Mami" :escuridao 30 :bruxas 20)))
    (grupo-novo (cons (make-garota-magica :nome "Kyoko" :escuridao 55 :bruxas 15) grupo))
    (sayaka (car grupo))
    (purificada (purifica sayaka 50)))
    (format t "Kyubey: Vamos ver como estao as Joias da Alma de voces...~%")
    (format t "Escuridao acumulada nas Joias do grupo: ~a~%" (escuridao-total grupo))
    (format t "Bruxas derrotadas pelo grupo: ~a~%" (total-de-bruxas grupo))
    (format t "~%Kyubey: Faca um contrato comigo e se torne uma garota magica!~%")
    (format t "Kyoko aceitou o contrato! Escuridao das Joias:~%")
    (format t "Com a Kyoko: ~a (~a garotas)~%" (escuridao-total grupo-novo) (length grupo-novo))
    (format t "Sem a Kyoko: ~a (~a garotas)~%" (escuridao-total grupo) (length grupo))
    (format t "~%~a usou uma Semente da Aflicao na Joia.~%" (garota-magica-nome sayaka))
    (format t "Joia original: ~a de escuridao~%" (garota-magica-escuridao sayaka))
    (format t "Joia purificada: ~a de escuridao~%" (garota-magica-escuridao purificada))))

(main)