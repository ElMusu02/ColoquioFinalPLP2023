; 2)a.1. Reemplace las sublistas que existan por la suma de sus elementos.

(require srfi/1)

(define (sumar_sublistas lista)
  (map (lambda (elemento)
         (if (and (list? elemento) (andmap number? elemento))
             (reduce +  0  elemento)
             elemento
             )
         ) lista)
  )