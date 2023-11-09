; 2)b. Triangulos: recibe como parámetro una lista de n sublistas, donde cada 
; sublista tiene solamente 2 números positivos que representan las medidas de 
; los catetos de un triángulo rectángulo. Luego, la función Triangulos debe 
; devolver una lista que contiene las medidas de las hipotenusas de los n 
; triángulos ingresados.

(require srfi/1)

(define (hipotenusa lista)
  (reduce +  0 
          (map (lambda (elemento)
                 (* elemento elemento)
                 )
               lista) 
          )
  )

(define (triangulos lista)
  (map hipotenusa lista)
  )