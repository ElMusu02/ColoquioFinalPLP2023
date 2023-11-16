alumnos := OrderedCollection new.
continuar := true.
[continuar] whileTrue: [ 
    cursadaIngresada := true.
    alumno := nil.
    cursada := nil.
	yaIngresado := false.

     [
	dni := (Dialog request: ' Ingrese su DNI ' initialAnswer: ' ' ) asNumber.
	dni asInteger.
	(dni isNil or: [dni between: 15000000 and: 60000000] )] whileFalse: [ 
            	Dialog warn: ' Incorrecto!.Ingrese un DNI valido '.
      	 ].

    alumnos do: [:alumnoGuardado | 
        (alumnoGuardado getDni = dni) ifTrue:[
            alumno := alumnoGuardado.
		  yaIngresado := true.
        ]
    ].
    (alumno isNil) ifTrue:[
        alumno := Alumno new.
        alumno setDni: dni.
    ].
	
	[cursadaIngresada] whileTrue: [
		[
	materia := (Dialog request: ' Ingrese el nombre de la materia' initialAnswer: ' ') trimBlanks asUppercase.
	(materia =' ' )] whileTrue: [ 
            	Dialog warn: ' Incorrecto!.Debe ingresar un nombre de materia valido. '.
      	 ].

	cursadaIngresada := false.
	
		(alumno getCursadas isNil) ifFalse: [
			alumno getCursadas do: [:cursadasGuardadas |
        			(cursadasGuardadas getMateria = materia) ifTrue:[
            			"cursada ya ingresada"
            			cursadaIngresada := true.
            			Dialog warn: 'Esta materia ya fué ingresada por usted, ingrese otra materia.'.
        			]
    			].
		].
	].


    "------------------------------------------------------INGRESO EL AÑO---------------------------------------------------"

	 [
	anio := (Dialog request: ' Ingrese el año de cursado de la materia (valor entre 2010 y 2023)' initialAnswer: ' ' ) asNumber.
      anio asInteger.
	(anio isNil or: [anio between: 2010 and: 2023] )] whileFalse: [ 
            	Dialog warn: ' Incorrecto!.Ingrese un año de cursada valido '.
      	 ].
        
        cursada := Cursada new.
        cursada setMateria: materia.
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

    alumno setCursadas: cursada.

    "------------------------------------------------------------------------------"

    rindioFinal := Dialog
            choose: ' ¿Rindió alguna vez el examen final de la materia?'
            labels: #( 'Si' 'No')
            values: #( 'Si' 'No')
            default: #Nil.

    (rindioFinal = 'Si') ifTrue: [
		[
       cantFinales := (Dialog request: ' Ingrese la cantidad de veces que rindio el examen final (maximo hasta 8)' initialAnswer: ' ' ) asNumber.
        cantFinales asInteger.
        (cantFinales isNil or: [cantFinales between: 1 and: 8] )] whileFalse: [ 
                Dialog warn: ' Incorrecto!. Ingrese una cantidad valida'.
        ].           

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

                [
                notaFinal := (Dialog request: 'Indique la calificación obtenida en el examen final aprobado' initialAnswer: ' ' ) asNumber.
                notaFinal asInteger.
                (notaFinal isNil or: [notaFinal between: 4 and: 10] )] whileFalse: [ 
                        Dialog warn: 'Nota incorrecta. Indique la calificación obtenida en el examen final aprobado'.
                ].
                finalAprobado setCalificacion: notaFinal.
			  finalAprobado setMateria: materia.
			  finalAprobado setVeces: cantFinales.

                alumno setFinalesAprobados: finalAprobado.

            ] ifFalse: [
                finalNoAprobado := FinalNoAprobado new.
                [
                anioPiensaFinal := (Dialog request: 'Indique el año en el que piensa rendir el examen final (valor mayor o igual a 2023)' initialAnswer: ' ' ) asNumber.
                anioPiensaFinal asInteger.
                (anioPiensaFinal = ' ' or: [anioPiensaFinal < 2023] )] whileTrue: [ 
                        Dialog warn: ' Año erroneo. Ingrese un año valido. (valor mayor o igual a 2023)'.
                ].		
                finalNoAprobado setAñoPiensaRendir: anioPiensaFinal.
			  finalNoAprobado setMateria: materia.
			  finalNoAprobado setVeces: cantFinales.

                alumno setFinalesNoAprobados: finalNoAprobado. 
            ]
    ] ifFalse: [
        finalNoAprobado := FinalNoAprobado new.
        [
                anioPiensaFinal := (Dialog request: 'Indique el año en el que piensa rendir el examen final (valor mayor o igual a 2023)' initialAnswer: ' ' ) asNumber.
                anioPiensaFinal asInteger.
                (anioPiensaFinal = ' ' or: [anioPiensaFinal < 2023] )] whileTrue: [ 
                        Dialog warn: ' Año erroneo. Ingrese un año valido. (valor mayor o igual a 2023)'.
                ].		
        finalNoAprobado setAñoPiensaRendir: anioPiensaFinal.
	   finalNoAprobado setMateria: materia.
	   finalNoAprobado setVeces: cantFinales.

        alumno setFinalesNoAprobados: finalNoAprobado.
    ].

	(yaIngresado) ifFalse:[
        alumnos add: alumno.
    ].

    continuar := Dialog
        choose: '¿Desea seguir ingresando alumnos?'
        labels: #( 'Si' 'No' )
        values: #( true false )
        default: #false.
    
].



"-----------------------------------------------------ACÁ EMPIEZAN LOS MÉTODOS-------------------------------------------------"

"-------------------------------------------------------------------------------------------------------------------------------------------------------------------"
" Cantidad de encuestas ingresadas, discriminadas por materia "

materias := Set new.
alumnos do: [:alumnox | 
    alumno := alumnox. 
    materias addAll: (alumno getCursadas collect: [:cursadax |
        cursada := cursadax. 
	   cursada getMateria.
    ]) asSet.
]. 

cantidadEncuestas := (Dictionary new).
materias do: [:materiax |
    materia := materiax. alumnos do: [:alumnox |
		alumno := alumnox. 
		cantidad := alumno obtenerCantidadCursadas: materia.

        (cantidadEncuestas includesKey: materia) ifTrue: [
            cantidadEncuestas at: materia put: (cantidadEncuestas at: materia) + cantidad.
        ] ifFalse: [
            cantidadEncuestas at: materia put: cantidad.
        ].
    ].
]. 

cadena := String new.
cantidadEncuestas keysAndValuesDo: [:mat :cant |
        cadena := cadena, mat printString, ': ',  cant printString, ' '. 
    ]. 

cadena := String new.

cantidadEncuestas keysAndValuesDo: [:mat :cant |
    cadena := cadena, mat asString, ': ', cant printString, '\'.
].

Dialog warn: 'Cantidad de encuestas ingresadas, discriminadas por materia: \' withCRs, cadena withCRs.

"----------------------------------------------------------------------------------------------------------------------------------------------------------------------"

" Cantidad de exámenes aprobados en un año determinado. "

anioFinales := (Dialog request: ' Indique el año para determinar la cantidad de examenes aprobados.' initialAnswer: ' ' ) asNumber.
anioFinales asInteger. 

cantidadFinalesAprobados := 0.
alumnos do: [:alumnox | 
    alumno := alumnox. 
    cantidadFinalesAprobados := cantidadFinalesAprobados + (alumno obtenerFinalesAprobadosAnio: anioFinales) asInteger.
].

Dialog warn: 'La cantidad de exámenes finales aprobados en el ', anioFinales printString, ' es igual a ', cantidadFinalesAprobados printString.

"-------------------------------------------------------------------------------------------------------------------------------------------------------------------"

"  Cantidad de alumnos que piensan rendir la materia en un determinado año. "

materiaRendir := (Dialog request: ' Indique la materia para determinar la cantidad de alumnos que piensan rendirla.' initialAnswer: ' ' ) trimBlanks asUppercase.

anioPiensanRendir := (Dialog request: ' Indique el año para determinar la cantidad de alumnos que piensan rendir ', materiaRendir initialAnswer: ' ' ) asNumber.
anioPiensanRendir asInteger. 

cantidadPiensanRendir := (alumnos select: [:alumnox | 
    alumno := alumnox. 
	alumno piensaRendir: materiaRendir and: anioPiensanRendir.
]) size.

Dialog warn: 'La cantidad de alumnos que piensan rendir ', materiaRendir, ' en el ', anioPiensanRendir printString, ' es igual a ', cantidadPiensanRendir printString.

"-------------------------------------------------------------------------------------------------------------------------------------------------------------------"

" Las materias con menos y más exámenes finales aprobados. "

cantidadFinalesAprobados := (Dictionary new).

alumnos do: [:alumnox | 
    alumno := alumnox. alumno getFinalesAprobados do: [:finalAprobadox |
        finalAprobado := finalAprobadox. materia := finalAprobado getMateria.  
        (cantidadFinalesAprobados includesKey: materia) ifTrue: [
            cantidad := (cantidadFinalesAprobados at: materia) + 1.
            cantidadFinalesAprobados at: materia put: cantidad.
        ] ifFalse: [
            cantidadFinalesAprobados at: materia put: 1.
        ].
    ].
].

cantFinalesAprob := cantidadFinalesAprobados values asSortedCollection.
maxAprobados := cantFinalesAprob last.
minAprobados := cantFinalesAprob first.
materiaMaxAprobados := cantidadFinalesAprobados keyAtValue: maxAprobados.
materiaMinAprobados := cantidadFinalesAprobados keyAtValue: minAprobados.

Dialog warn: 'La materia con mas examenes aprobados es ', materiaMaxAprobados,  ' con ', maxAprobados printString,
	'. La materia con menos examenes aprobados es ', materiaMinAprobados, ' con ', minAprobados printString.

"-------------------------------------------------------------------------------------------------------------------------------------------------------------------"

" Resumen de resultados de cursada de una materia en un año determinado (cantidad de aprobados, de desaprobados y de ausentes). "

materia := (Dialog request: ' Indique la materia para determinar los resultados de una cursada.' initialAnswer: ' ' ) trimBlanks asUppercase.
anio := (Dialog request: ' Indique el año de la cursada de ', materia initialAnswer: ' ' ) asNumber.
anio asInteger.
 
aprobados := 0.
desaprobados := 0.
ausentes := 0.

alumnos do: [:alumnox | 
    alumno := alumnox. 
	cursadasMateria := alumno getCursadas select: [:cursadax |
        cursada := cursadax. 
	   cursada getMateria = materia and: [cursada getAño = anio].
    ].

    aprobados := aprobados + (cursadasMateria select: [:cursadax |
        cursada := cursadax. 
	   cursada getResultado = 'Aprobado'.
    ]) size.

    desaprobados := desaprobados + (cursadasMateria select: [:cursadax |
        cursada := cursadax. 
	   cursada getResultado = 'Desaprobado'.
    ]) size.

	ausentes := ausentes + (cursadasMateria select: [:cursadax |
        cursada := cursadax. 
	   cursada getResultado = 'Ausente'.
    ]) size.
].

Dialog warn: 'Resultados de la cursada de ', materia,' en el ',anio printString,': ', 
	'\Aprobados: ' withCRs, aprobados printString, 
	'\Desaprobados: ' withCRs, desaprobados printString, 
	'\Ausentes: ' withCRs,ausentes printString.

"-------------------------------------------------------------------------------------------------------------------------------------------------------------------"

"Dado un número de documento, indique la cantidad de materias aprobadas, el promedio de calificaciones, y las calificaciones más baja y más alta obtenidas." 

dni := (Dialog request: 'Ingrese un DNI para determinar la cantidad de materias aprobadas.' initialAnswer: ' ' ) asNumber.
dni asInteger.

alumno := (alumnos select: [:unAlumno | 
    unAlumno getDni = dni
]) first.

cantidadAprobadas := (alumno getFinalesAprobados) size.

(cantidadAprobadas = 0) ifTrue: [
	Dialog warn: 'Resultados del alumno con Dni: ', dni printString, 
	'\Materias aprobadas: ' withCRs, cantidadAprobadas printString, 
	'\Promedio: No posee' withCRs, 
	'\Calificacion mas alta: No posee' withCRs,
     '\Calificacion mas baja: No posee' withCRs.
] ifFalse: [
	promedio := alumno calcularPromedioFinales asFloat roundTo: 0.01.	
	calificacionAlta := alumno obtenerCalificacionAltaFinales.
	calificacionBaja := alumno obtenerCalificacionBajaFinales.

	Dialog warn: 'Resultados del alumno con Dni: ', dni printString, 
	'\Materias aprobadas: ' withCRs, cantidadAprobadas printString, 
	'\Promedio: ' withCRs, promedio printString, 
	'\Calificacion mas alta: ' withCRs, calificacionAlta printString,
     '\Calificacion mas baja: ' withCRs, calificacionBaja printString.
].

"-------------------------------------------------------------------------------------------------------------------------------------------------------------------"

" Dada una materia, indicar el promedio de las calificaciones de cursada y el promedio de calificaciones en los exámenes finales. "

materia := (Dialog request: ' Indique la materia para determinar los resultados de una cursada.' initialAnswer: ' ' ) trimBlanks asUppercase.

promedioFinales := (alumnos collect: [:alumnox |
    alumno := alumnox. 
    alumno calcularPromedioFinales: materia.
]) select: [:promediox |
	promedio := promediox. promedio isNil not.
]. 

sumatoriaFinales := 0.
promedioFinales do: [:promediox |
    promedio := promediox. 
    sumatoriaFinales := sumatoriaFinales + promedio. 
].

(promedioFinales size = 0) ifTrue: [
	promedioFinalesTotal := 'Nadie tiene el final aprobado' .
] ifFalse: [
	promedioFinalesTotal :=  (sumatoriaFinales / (promedioFinales size)) asFloat.
].

promediosCursadas := (alumnos collect: [:alumnox |
    alumno := alumnox. 
    alumno calcularPromedioCursadas: materia.

]) select: [:promediox |
	promedio := promediox. 
	promedio isNil not.
]. 


sumatoriaCursadas := 0.
promediosCursadas do: [:promediox |
    promedio := promediox. 
    sumatoriaCursadas := sumatoriaCursadas + promedio. 
].

(promediosCursadas size = 0) ifTrue: [
	promedioCursadasTotal := 'Nadie cursó la materia' .
] ifFalse: [
	promedioCursadasTotal := (sumatoriaCursadas / (promediosCursadas size)) asFloat.
].

Dialog warn: 'Resultados para la materia ', materia, 
	'\Promedio de calificaciones de la cursada: ' withCRs, promedioCursadasTotal printString, 
	'\Promedio de calificaciones de examenes finales: ' withCRs, promedioFinalesTotal printString.

"-------------------------------------------------------------------------------------------------------------------------------------------------------------------"

" Para una determinada materia, porcentaje de alumnos que aprobaron la cursada y el examen final. "

materia := (Dialog request: ' Indique la materia para determinar el porcentaje de alumnos que aprobaron la cursada y el final.' initialAnswer: ' ' ) trimBlanks asUppercase.

aprobados := alumnos select: [:alumnox |
    alumno := alumnox. alumno aproboCursadaConFinal: materia.
].

porcentaje := ((aprobados size / alumnos size) * 100) asFloat roundTo: 0.01.

Dialog warn: 
    'Porcentaje de alumnos que aprobaron la cursada y el final de ', materia, 
    ': ', porcentaje printString, '%'.

"-------------------------------------------------------------------------------------------------------------------------------------------------------------------"

"Estimación de alumnos que cursarán una materia en 2024: se obtiene sumando todos los alumnos que desaprobaron la cursada o estuvieron ausentes y 
obviamente aún no aprobaron el examen final. A ese subtotal se le debe agregar un 50%, que son los alumnos que cursarán la materia por primera vez. "

materia := (Dialog request: 'Indique la materia para determinar los alumnos que cursaran la materia en el año 2024.' initialAnswer: ' ' ) trimBlanks asUppercase.

desaprobados := (alumnos select: [:alumnox |
    alumno := alumnox. alumno desaproboCursada: materia.
]) size.

desaprobados := (desaprobados * 1.5) asInteger.

Dialog warn: 
    'La cantidad de alumnos que van a cursar ', materia printString, 
    ' en 2024 es ', desaprobados printString.

"-------------------------------------------------------------------------------------------------------------------------------------------------------------------"

"Estimacion de alumnos que rendiran un final en 2024"

cantidadAlumnosARendir := 0.
alumnos do: [:alumnox | 
    alumno := alumnox. 
    cantidadAlumnosARendir := cantidadAlumnosARendir + (alumno calcularFinalesNoAprobados: 2024).
].

Dialog warn: 'La cantidad estimada de alumnos que van a rendir una materia en el año 2024 es igual a ', cantidadAlumnosARendir asInteger printString.