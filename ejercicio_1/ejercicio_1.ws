alumno := Alumno new.
cursada := Cursada new.

dni := Dialog request: ' Ingrese su dni' initialAnswer: ' ' .
alumno setDni: dni.

materia := Dialog request: ' Ingrese el nombre de la materia' initialAnswer: ' '.
cursada setMateria: materia.

"------------------------------------------------------INGRESO EL AÑO---------------------------------------------------"

[|anio|
anio := (Dialog request: ' Ingrese el año de cursado de la materia (valor entre 2010 y 2023)' initialAnswer: ' ' ) asNumber.
anio asInteger.
(anio isNil or: [anio between: 2010 and: 2023] )] whileFalse: [ 
            Dialog warn: ' Año erroneo. Ingrese el año de cursado de la materia (valor entre 2010 y 2023)'.
       ].

cursada setAño: anio.
"------------------------------------------------------------------------------------------------------------------------"

"SELECCION RESULTADO CURSADA, SI ES APROBADO INDICA LA NOTA"

resultadoCursada := Dialog
		choose: 'Seleccione el resultado de la cursada'
		labels: #( 'Aprobado' 'Desaprobado' 'Ausente')
		values: #( 'Aprobado' 'Desaprobado' 'Ausente')
		default: #Ausente.
cursada setResultado: resultadoCursada.

(cursada getResultado = 'Aprobado') ifTrue: [
	[
	nota := (Dialog request: ' Ingrese el resultado de la cursada de la materia (valor entre 6 y 10)' initialAnswer: ' ' ) asNumber.
	nota asInteger.
	(nota isNil or: [nota between: 6 and: 10] )] whileFalse: [ 
            Dialog warn: ' Nota fuera de rango. Ingrese la nota de la cursada de la materia (valor entre 6 y 10)'.
       ].
	cursada setCalificacion: nota.		
]. 

"------------------------------------------------------------------------------"

rindioFinal := Dialog
		choose: ' ¿Rindió alguna vez el examen final de la materia?'
		labels: #( 'Si' 'No')
		values: #( 'Si' 'No')
		default: #Nil.

(rindioFinal = 'Si') ifTrue: [
		cantFinales := (Dialog request: 'Indique la cantidad de veces que rindió el examen final' initialAnswer: ' ' ) asNumber.
		aproboFinal := Dialog
			choose: ' ¿Aprobó el examen final de la materia?'
			labels: #( 'Si' 'No')
			values: #( 'Si' 'No')
			default: #Nil.

		(aproboFinal = 'Si') ifTrue: [
			finalAprobado := FinalAprobado new.			
			[
			anioFinal := (Dialog request: ' Indique el año en el que rindió el examen final aprobado (valor mayor al año de la cursada y hasta el 2023)' initialAnswer: ' ' ) asNumber.
			anioFinal asInteger. 

			(cursada getAño < anioFinal  and: [anioFinal <= 2023])] whileFalse: [ 
              		Dialog warn: ' Año erroneo. Ingrese el año en el que rindió el examen final aprobado (valor mayor al año de la cursada y hasta el 2023)'.
       		].		
			finalAprobado setFecha: anioFinal.
			finalAprobado getFecha.

			[
			notaFinal := (Dialog request: 'Indique la calificación obtenida en el examen final aprobado' initialAnswer: ' ' ) asNumber.
			notaFinal asInteger.
			(notaFinal isNil or: [notaFinal between: 4 and: 10] )] whileFalse: [ 
              		Dialog warn: 'Nota incorrecta. Indique la calificación obtenida en el examen final aprobado'.
       		].
			finalAprobado setCalificacion: notaFinal.

		] ifFalse: [
			finalNoAprobado := FinalNoAprobado new.
			[
			anioPiensaFinal := (Dialog request: 'Indique el año en el que piensa rendir el examen final (valor entre 2010 y 2023)' initialAnswer: ' ' ) asNumber.
			anioPiensaFinal asInteger.
			(anioPiensaFinal isNil or: [anioPiensaFinal between: 2010 and: 2023] )] whileFalse: [ 
              		Dialog warn: ' Año erroneo. Ingrese el año en el que rindió el examen final aprobado (valor entre 2010 y 2023)'.
       		].		
			finalAprobado setFecha: anioPiensaFinal.
		]
] ifFalse: 
	[

	]
