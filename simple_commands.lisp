;; Compile lisp online - https://rextester.com/l/common_lisp_online_compiler

;; Função car, pega o primeiro item de um vetor
;; Vai imprimir 'a'
(print (car '(a b c d)))


;; Função cdr, pega todos os itens de um vetor retirando o primeiro
;; Vai imprimir 'b c d'
(print (cdr '(a b c d)))

;; Função car e cdr juntos, lista o segundo item do vetor -> b
;; Vai imprimir 'B'
(print (car (cdr '(A B C D E F G))))

;; Função cons, insere um elemento na primeira posição de um vetor
;; Vai imprimir (B A) 
(print (cons 'B '(A)))

;; Vai imprimir ((a b) c d)
(print (cons '(a b) '(c d)))

;; Função list, cria uma lista com os elementos passados por parâmetro
;; Vai imprimir ((A B) (C D)) 
(print (list '(A B ) '(C D)))

;; Função append, append as lista passada por parâmetro
;; Vai imprimir (A B C D) 
(print (append '(A B ) '(C D)))


;; Mais exemplos..
(progn  
(format t "Car de (A B C): ~A~%" (car '(A B C))) 
(format t "Cdr de (A B C): ~A~%" (cdr '(A B C))) 
(format t "Cons de X em (A B C): ~A~%" (cons 'X '(A B C))) 
(format t "Append de (A B C) (X Y Z): ~A~%" (append '(A B C) '(X Y Z))) 
(format t "List com X e (A B C): ~A~%" (list 'X '(A B C)))
)


;; Predicados, sempre retornam true ou false
;; T é true, e NIL é false
(print (atom 'a))
(print (atom '(a)))
(print (evenp 8))
(print (evenp 9))
(print (oddp 8))
(print (oddp 9))
(print (consp 'a))
(print (consp '(a)))
(print (listp 'a))
(print (listp '(a)))
(print (numberp 'a))
(print (numberp 7))
(print (null NIL))
(print (null '(a b c)))
(print (null '()))


;; Soma é com somente um +
;; Vai resultar em 15
(+ 2 5 8)

;; Para fazer 9 - 3 * 2, precisa definir a precedência
(- 9 (* 3 2))

;; Função fazer o dobro de x
(defun dobro(x) 
    (* 2 x))

;; Vai imprimir 18
(print (dobro 9))

;; Comando if no Lisp
(print (if (oddp 1) 10 20)

;; Dobro do último
(defun dobrou(x)
    (if (null x)
        nil
        (if (null (cdr x ))
            (dobro (car x ))
            (dobrou (cdr x )))))

;; Vai imprimir 14, pois é o dobro do último
(print (dobrou '(1 2 3 7)))