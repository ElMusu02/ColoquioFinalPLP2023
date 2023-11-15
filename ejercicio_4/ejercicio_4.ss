; 4) Defina una función o un predicado que reciba una lista de n elementos 
;    numéricos o caracteres alfabeticos y determine si la misma está ordenada 
;    de menor a mayor o no. Además, si es una lista numérica, se debe verificar 
;    que, a partir del tercer elemento, cada numero es igual a la suma de los 
;    dos anteriores. 

(require srfi/1)

(define (%or x y)
  (or x y))

(define (%and x y)
  (and x y))

(define (lista_numerica? lista)
  (andmap number? lista)
  )

(define (dividir lista n)
  (asociar lista n '())
  )

(define (asociar lista n sublistas)
  (if (or (null? lista) (> 3 (length lista)))
      sublistas
      (asociar (cdr lista) n (append sublistas (list (take lista n))))
      )
  )

(define (ordenada_asc? lista)
  (define tipo
    (cond 
      ((char? (car lista)) char<?)
      ((string? (car lista)) string<?)
      (else <)
      )
    )
  
  (equal? lista (sort lista tipo))
  )

(define (ordenada_o_suma? lista)
  (cond 
    ((and (andmap number? lista) (ordenada_asc? lista)) 
     (equal? (map (lambda (elemento)
                    (reduce + 0 elemento)
                    )
                  (dividir lista 2))
             (cddr lista)
             )
     )
    ((and (andmap char? lista) (ordenada_asc? lista)) true)
    (else false)
    )
  )