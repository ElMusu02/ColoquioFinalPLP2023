; 2)a.2. Determine e informe al usuario la cantidad de elementos pares, impares 
;        y nulos.

(require srfi/1)

(define (contar_signos lista)
  (mostrar positive? "Positivos: " lista)
  (mostrar negative? "Negativos: " lista)
  (mostrar zero? "Nulos: " lista)
  )

(define (mostrar funcion cadena lista)
  (display (string-append cadena (number->string (length (filter funcion lista)))))
  (newline)
  )
