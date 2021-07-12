;; Função car, pega o primeiro item de um vetor
;; Vai imprimir 'a'
(print (car '(a b c d)))


;; Função cdr, pega todos os itens de um vetor retirando o primeiro
;; Vai imprimir 'b c d'
(print (cdr '(a b c d)))

;; Função car e cdr juntos, lista o segundo item do vetor -> b
;; Vai imprimir 'B'
(print (car (cdr '(A B C D E F G))))