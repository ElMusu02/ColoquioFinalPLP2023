% Hechos que almacenan los valores de las rutas de los vuelos que son iguales
% en ambas direcciones.
% valor(id, precio, distancia)
valor(1, 800, 11136). %  Roma - Buenos Aires
valor(2, 280, 3147). % Buenos Aires - Lima
valor(3, 615, 10062). % Madrid - Buenos Aires
valor(4, 50, 656). % Cordoba - Buenos Aires
valor(5, 120, 974). % Mendoza - Buenos Aires
valor(6, 700, 7091). % Buenos Aires - Miami
valor(7, 100, 229). % Buenos Aires - Montevideo
valor(8, 850, 8500). % Buenos Aires - New York
valor(9, 550, 6000). % Buenos Aires - Punta Cana
valor(10, 150, 1141). % Buenos Aires - Santiago
valor(11, 120, 1680). % Buenos Aires - Sao Paulo
valor(12, 180, 2350). % Buenos Aires - Usuahia
valor(13, 630, 10108). % Madrid - Cordoba
valor(14, 30, 197). % Santiago - Mendoza


% Hechos que almacenan las ciudades
% ciudad(id, nombre, pais)
ciudad(1, "Buenos Aires", "Argentina").
ciudad(2, "Madrid", "España").
ciudad(3, "Montevideo", "Uruguay").
ciudad(4, "Cordoba", "Argentina").
ciudad(5, "Punta Cana", "Republica Dominicana").
ciudad(6, "Miami", "Estados Unidos").
ciudad(7, "New York", "Estados Unidos").
ciudad(8, "Ushuaia", "Argentina").
ciudad(9, "Sao Paulo", "Brasil").
ciudad(10, "Lima", "Peru").
ciudad(11, "Santiago", "Chile").
ciudad(12, "Mendoza", "Argentina").
ciudad(13, "Roma", "Italia").


% Hechos que almacenan los vuelos
% vuelo(id, numero_vuelo, id_origen, id_destino, frecuencia, id_valor, horario_salida, horario_llegada, mismo_dia, id_avion, diferencia_horaria)
% Orden de los parametros
% 1: id
% 2: numero_vuelo
% 3: id_origen
% 4: id_destino
% 5: frecuencia
% 6: id_valor
% 7: horario_salida
% 8: horario_llegada
% 9: id_avion
% 10: diferencia_horaria
vuelo(1, "AR1140", 1, 13, ["LU", "MA", "MI", "JU", "VI"], 1, "22:40", "16:00", 4, -4).
vuelo(2, "AR1141", 13, 1, ["MA", "MI", "JU", "VI", "SA"], 1, "18:15", "04:40", 4, 4).
vuelo(3, "AR1132", 1, 2, ["LU", "MA", "MI", "JU", "VI", "SA", "DO"], 3, "23:55", "04:40", 4, -4).
vuelo(4, "AR1133", 2, 1, ["LU", "MA", "MI", "JU", "VI", "SA", "DO"], 3, "19:00", "04:05", 4, 4).
vuelo(5, "AR1386", 1, 3, ["LU", "MA", "MI", "JU", "VI", "SA", "DO"], 7, "08:00", "08:45", 1, 0).
vuelo(6, "AR1387", 3, 1, ["LU", "MA", "MI", "JU", "VI", "SA", "DO"], 7, "09:15", "10:00", 1, 0).
vuelo(7, "AR1134", 1, 2, ["MA", "JU", "SA"], 3, "13:40", "05:55", 4, -4).
vuelo(8, "AR1135", 2, 4, ["MI", "VI", "DO"], 13, "08:30", "17:35", 4, 4).
vuelo(9, "AR1136", 4, 1, ["MI", "VI", "DO"], 4, "19:00", "20:15", 4, 0).
vuelo(10, "AR1324", 1, 5, ["LU", "MA", "VI", "SA"], 9, "02:25", "09:40", 8, 1).
vuelo(11, "AR1325", 5, 1, ["LU", "MA", "VI", "SA"], 9, "11:10", "19:55", 8, -1).
vuelo(12, "AR1302", 1, 6, ["LU", "MA", "MI", "JU", "VI", "SA", "DO"], 6, "22:55", "06:05", 7, 1).
vuelo(13, "AR1303", 6, 1, ["LU", "MA", "MI", "JU", "VI", "SA", "DO"], 6, "17:15", "04:10", 6, -1).
vuelo(14, "AR1300", 1, 7, ["LU", "MA", "MI", "JU", "VI", "SA", "DO"], 8, "23:55", "09:00", 6, 1).
vuelo(15, "AR1301", 7, 1, ["LU", "MA", "MI", "JU", "VI", "SA", "DO"], 8, "15:35", "04:35", 6, -1).
vuelo(16, "AR1880", 1, 8, ["LU", "MA", "MI", "JU", "VI", "SA", "DO"], 12, "15:50", "19:25", 5, 0).
vuelo(17, "AR1881", 8, 1, ["LU", "MA", "MI", "JU", "VI", "SA", "DO"], 12, "21:00", "00:25", 5, 0).
vuelo(18, "AR1238", 1, 9, ["LU", "MA", "MI", "JU", "VI", "SA", "DO"], 11, "16:15", "18:55", 2, 1).
vuelo(19, "AR1239", 9, 1, ["LU", "MA", "MI", "JU", "VI", "SA", "DO"], 11, "19:50", "22:45", 2, -1).
vuelo(20, "AR1364", 1, 10, ["LU", "MA", "MI", "JU", "VI", "SA", "DO"], 2, "18:50", "21:35", 3, 2).
vuelo(21, "AR1365", 10, 1, ["LU", "MA", "MI", "JU", "VI", "SA", "DO"], 2, "22:50", "05:05", 3, -2).
vuelo(22, "AR1284", 1, 11, ["LU", "MA", "MI", "JU", "VI", "SA", "DO"], 10, "11:10", "13:30", 1, 0).
vuelo(23, "AR1285", 11, 12, ["LU", "MA", "MI", "JU", "VI", "SA", "DO"], 14, "14:30", "15:25", 1, 0).
vuelo(24, "AR1286", 12, 1, ["LU", "MA", "MI", "JU", "VI", "SA", "DO"], 5, "16:00", "17:35", 1, 0).


% Hechos que almacenan los aviones
% avion(id, fabricante, modelo, rango_alcance, aisentos_turista, asientos_bussines)
% Orden de los parametros
% 1: id
% 2: fabricante
% 3: modelo
% 4: rango_alcance
% 5: asientos_turista
% 6: asientos_bussines
avion(1, "Boeing", "737-700", 5000, 120, 8).
avion(2, "Boeing", "737-800", 4500, 162, 8).
avion(3, "Boeing", "737 MAX 8", 5000, 162, 8).
avion(4, "Airbus", "A330-200", 12000, 243, 22).
avion(5, "Airbus", "A330-200", 10000, 299, 0).
avion(6, "Airbus", "A330-200", 12000, 248, 24).
avion(7, "Airbus", "A330-200", 10000, 244, 25).
avion(8, "Airbus", "A330-200", 10000, 186, 36).


% Hechos que almacenan los porcentajes sobre la base de los precios de asientos,
% para la clase turista
% precio_turista(tipo, tasas_impuestos, cargos_empresa)
precio_turista_nacional(0.20, 0.05).
precio_turista_internacional(0.60, 0.35).

% Hecho que almacena el precio en clase bussines sobre el precio turista
precio_bussines(1.2).

% Hecho que almacena la tripulacion de un vuelo
% tripulacion_vuelo___(copiloto, azafata)
tripulacion_vuelo_largo(2, 25).
tripulacion_vuelo_corto(1, 20).


% =============================================================================

% 1. Informar las ciudades destino de una determinada ciudad origen

%% ciudades_destino(+O, -Destino)
%
%  Busca las ciudades de destino dada una ciudad de origen O.
%
ciudades_destino(O, Destino) :-
	ciudad(IdOrigen, O, _),
	vuelo(_, _, IdOrigen, IdDestino, _, _, _, _, _, _),
	ciudad(IdDestino, Destino, _).

% =============================================================================

% 2. Informar las rutas que realiza un modelo determinado de avión o los
%    aviones de un fabricante específico.

%% rutas_modelo_o_fabricante(+M, +F, -Origen, -Destino, -IdAvion)
%
%  Busca las rutas que realiza un modelo de avion M, o un fabricante F.
%
rutas_modelo_o_fabricante(M, F, Origen, Destino, IdAvion) :-
	avion(IdAvion, _, M, _, _, _),
	vuelo(_, _, IdOrigen, IdDestino, _, _, _, _, IdAvion, _),
	ciudad(IdOrigen, Origen, _),
	ciudad(IdDestino, Destino, _),
	avion(IdAvion, F, _, _, _, _).

% =============================================================================

% 3. Informar las rutas que puede hacer un determinado avión, considerando su
%    rango de alcance y la distancia de la ruta.

%% rutas_avion(+A, -Origen, -Destino)
%
%  Busca las rutas que puede realizar un modelo de avion A, teniendo en cuenta
%  su rango de alcance y las distancia de las rutas.
%
rutas_avion(A, Origen, Destino) :-
	valor(IdValor, _, Distancia),
	avion(A, _, _, Rango, _, _),
	integer(Rango),
	integer(Distancia),
	Distancia =< Rango,
	vuelo(_, _, IdOrigen, IdDestino, _, IdValor, _, _, _, _),
	ciudad(IdOrigen, Origen, _),
	ciudad(IdDestino, Destino, _).

% =============================================================================

% 4. Informar los vuelos que se realizan un determinado día, ordenados por hora
%    de salida.

:- use_module(library(lists)).

% Compara 2 vuelos basados en su horario de salida
comparar_vuelos(Resultado, IdVuelo1, IdVuelo2) :-
    vuelo(IdVuelo1, _, _, _, _, _, HoraSalida1, _, _, _),
    vuelo(IdVuelo2, _, _, _, _, _, HoraSalida2, _, _, _),
    compare(Resultado, HoraSalida1, HoraSalida2),
    (Resultado = "=" -> IdVuelo1 @<IdVuelo2;true).

% Ordenar los vuelos basados en su horario de salida
ordenar_vuelos_por_hora_salida :-
    findall(IdVuelo, vuelo(IdVuelo, _, _, _, _, _, _, _, _, _), VuelosSinOrdenar),
    predsort(comparar_vuelos, VuelosSinOrdenar, VuelosOrdenados),
    mostrar_vuelos_ordenados(VuelosOrdenados).

% Muestra los vuelos
mostrar_vuelos_ordenados([]).
mostrar_vuelos_ordenados([IdVuelo|Resto]) :-
    vuelo(IdVuelo, NumVuelo, IdOrigen, IdDestino, Frecuencia, IdValor, HoraSalida, HoraLlegada, IdAvion, Diferencia),
    format("Vuelo ~d: ~w, Desde: ~d, A: ~d, Frecuencia: ~w, IdValor: ~d, Hora Salida: ~w, Hora Llegada: ~w, IdAvion: ~d, Dif: ~d~n",
           [IdVuelo, NumVuelo, IdOrigen, IdDestino, Frecuencia, IdValor, HoraSalida, HoraLlegada, IdAvion, Diferencia]),
    mostrar_vuelos_ordenados(Resto).

%% vuelos_dia(+D, -IdVuelo)
%
%  Busca los vuelos dado un dia D, que puede ser "LU", "MA", "MI", "JU",
%  "VI", "SA" o "DO". Los vuelos estan ordenados por horario de salida.
%
vuelos_dia(D) :-
	vuelo(_, _, _, _, Frecuencia, _, _, _, _, _),
	member(D, Frecuencia),
	ordenar_vuelos_por_hora_salida.


% =============================================================================

% 5. Calcular la duración de un determinado vuelo, considerando los horarios de
%    salida y llegada y las diferencias horarias que existen entre las ciudades
%    de origen y destino.

convertir_total_minutos_a_hora(Minutos,HorasFi,MinutosFi):-
	HorasFi is div(Minutos,60),
	MinutosFi is mod(Minutos,60).

convertir_hora_a_integer(HoraString,Horas,Minutos):-
	split_string(HoraString,":","",[HorasStr,MinutosStr]),
	number_string(Horas,HorasStr),
	number_string(Minutos,MinutosStr).

diferencia_tiempo(HoraSalida,HoraLlegada,Difer):-
	convertir_hora_a_integer(HoraSalida,HT1,MT1),
	convertir_hora_a_integer(HoraLlegada,HT2,MT2),
	TotalMinutos1 is HT1 * 60 + MT1,
	TotalMinutos2 is HT2 * 60 + MT2,
	%Esto en el caso que el horario de llegada es al otro dia, o sea pasada las 00:00 Hs
	(TotalMinutos2 < TotalMinutos1 ->
	   TotalMinutos2_modif is TotalMinutos2 + 24 * 60;
	   TotalMinutos2_modif = TotalMinutos2),
	Difer is TotalMinutos2_modif - TotalMinutos1.

total_vuelo_duracion(HoraSalida,HoraLlegada,Duracion):-
	diferencia_tiempo(HoraSalida,HoraLlegada,Duracion).

duracion_vuelo_final(Vuelo) :-
	vuelo(_, Vuelo, _,_, _, _, HoraSal, HoraLle, _, DifHor),
	total_vuelo_duracion(HoraSal,HoraLle,Dur),
	DifeCal is DifHor * 60,
	DuracionFinal is Dur + DifeCal,
	convertir_total_minutos_a_hora(DuracionFinal,HorasFin,MinutosFin),
	Horas is HorasFin,
	write('La duracion del vuelo ingresado es de:'),
	write(Horas),write(' horas y '),
	write(MinutosFin), write(' minutos,').

% =============================================================================

% 6. Calcular el precio en pesos argentinos de un pasaje en clase turista y en
%    clase business para un determinado vuelo:
%		- Para los vuelos internacionales (el origen o destino es una ciudad
%		  argentina y el otro no), el precio en clase turista se obtiene
%		  sumando el precio base más las tasas e impuestos (equivalentes al 60%
%         del precio base) más los cargos de la empresa (35% del precio base).
%		- Para los vuelos nacionales (las ciudades origen y destino son
%         argentinas), el precio en clase turista se obtiene sumando el precio
%         base más las tasas e impuestos (equivalentes al 20% del precio base)
%		  más los cargos de la empresa (5% del precio base).
%    Luego, para obtener el precio en pesos argentinos, el usuario debe
%    ingresar la cotización oficial del dólar americano. Finalmente, el precio
%    del pasaje en clase business se obtiene sumandole un 120% al precio del
%    pasaje en clase turista.

%% precio(+N, -PrecioTurista, -PrecioBussines)
%
%  Busca los precios en clase turista y bussines, dado un numero de vuelo N. Se
%  le solicita ingresar al usuario la cotizacion oficial del dolar para calcular
%  los precios en pesos argentinos.
%
precio(N) :-
	vuelo(_, N, IdOrigen, IdDestino, _, IdValor, _, _, _, _),
	valor(IdValor, _Precio, _),
	ciudad(IdOrigen, _, PaisOrigen),
	ciudad(IdDestino, _, PaisDestino),
	writeln("Ingrese la cotizacion oficial del dolar: "),
	read(_Cotizacion),
	(PaisOrigen = PaisDestino ->
		precio_turista_nacional(__Impuesto, __Cargo)
	;	precio_turista_internacional(__Impuesto, __Cargo)
	),
	PrecioTurista is (_Precio * (1 + __Impuesto + __Cargo)) * _Cotizacion,
	precio_bussines(__CargoBussines),
	PrecioBussines is PrecioTurista * (1 + __CargoBussines),
	write('Precio en clase turista:'),
	write(' $ '),write(PrecioTurista),nl,
	write('Precio en clase business:'),
	write(' $ '),write(PrecioBussines).



% =============================================================================

% 7. Si se considera que un vuelo que dura más de 8 horas debe tener 1 auxiliar
%    de abordo (azafata) cada 25 asientos del avión, más 1 piloto y 2 copilotos,
%    y uno que dura menos de 8 horas debe tener 1 auxiliar de abordo (azafata)
%    cada 20 asientos del avión, más 1 piloto y 1 copiloto, calcular la
%    cantidad de personas que componen la tripulación completa (piloto mas
%    copiloto/s mas auxiliares de abordo) para un determinado vuelo.

%% tripulacion(+N, -Piloto, -Copilotos, -Azafatas)
%
%  Busca la cantidad de tripulantes Pilito, Copilotos y Azafatas que requiere
%  un vuelo N.
%
tripulacion(N, Piloto, Copilotos, Azafatas) :-
	duracion_vuelo_final(N,H),
	vuelo(_, N, _, _, _, _, _, _, IdAvion, _),
	avion(IdAvion, _, _, _, Turista, Business),
	(H> 8 ->
		tripulacion_vuelo_largo(Copilotos, __Asafata)
	;	tripulacion_vuelo_corto(Copilotos, __Asafata)
	),
	Azafatas is round((Turista + Business) / __Asafata),
	Piloto is 1.

% =============================================================================

% 8. Calcular la ganancia que obtiene la empresa si logra vender un porcentaje
%    determinado de pasajes en clase turista y otro porcentaje de pasajes en
%    clase business para un vuelo específico.

%% ganancia(+N, +T, +B, -Ganancia)
%
%  Calcula la ganancia en dolares dado un vuelo N, el porcentaje de vendido del
%  vuelo en clase turista T y bussines B.
%
ganancia(N, T, B) :-
	vuelo(_, N, IdOrigen, IdDestino, _, IdValor, _, _, IdAvion, _),
	avion(IdAvion, _, _, _, Turista, Bussines),
	integer(Turista),
	integer(Bussines),
	TuristaVendidos is (Turista * T) / 100,
	BussinesVendidos is (Bussines * B) / 100,
	valor(IdValor, _Precio, _),
	ciudad(IdOrigen, _, PaisOrigen),
	ciudad(IdDestino, _, PaisDestino),
	(PaisOrigen = PaisDestino ->
		precio_turista_nacional(__Impuestos, __Cargo)
	;	precio_turista_internacional(__Impuestos, __Cargo)
	),
	PrecioTurista is _Precio * (1 + __Impuestos + __Cargo),
	GananciaTurista is _Precio * (1 + __Cargo),
	precio_bussines(__CargoBussines),
	GananciaBussines is PrecioTurista * (1 + __CargoBussines),
	Ganancia is TuristaVendidos * GananciaTurista + BussinesVendidos * GananciaBussines,
	write('La ganacia de la empresa es de:'),
	write(' $ '),write(Ganancia).


% =============================================================================

% 9. Calcular la distancia recorrida por un avión que realiza un vuelo
%    triangular, es decir, primero realiza la ruta de la ciudad A a la ciudad
%    B, luego la ruta de la ciudad B a la ciudad C y finalmente la ruta de la
%    ciudad C a la ciudad A. Un vuelo triangular se identifica con números de
%    vuelos correlativos.

sumar_uno_numero_vuelo(V, NumeroVuelo) :-
	sub_string(V, 2, 4, _, CadenaNum),
	number_string(Num, CadenaNum),
	Numero is Num + 1,
	number_string(Numero, Sufijo),
	sub_string(V, 0, 2, _, Prefijo),
	string_concat(Prefijo, Sufijo, NumeroVuelo).

distancia_avion_triangular(A, Distancia) :-
	vuelo(_, NumeroVuelo1, IdOrigen, _, _, IdValor1, _, _, A, _),
	sumar_uno_numero_vuelo(NumeroVuelo1, NumeroVuelo2),
	vuelo(_, NumeroVuelo2, _, _, _, IdValor2, _, _, IdAvion2, _),
	IdAvion1 = IdAvion2,
	sumar_uno_numero_vuelo(NumeroVuelo2, NumeroVuelo3),
	vuelo(_, NumeroVuelo3, _, IdDestino, _, IdValor3, _, _, IdAvion3, _),
	IdAvion2 = IdAvion3,
	IdOrigen = IdDestino,
	valor(IdValor1, _, Distancia1),
	valor(IdValor2, _, Distancia2),
	valor(IdValor3, _, Distancia3),
	Distancia is Distancia1 + Distancia2 + Distancia3.

distancia_vuelo_triangular(N) :-
	vuelo(_, N, IdOrigen, _, _, IdValor1, _, _, IdAvion1, _),
	sumar_uno_numero_vuelo(N, NumeroVuelo2),
	vuelo(_, NumeroVuelo2, _, _, _, IdValor2, _, _, IdAvion2, _),
	IdAvion1 = IdAvion2,
	sumar_uno_numero_vuelo(NumeroVuelo2, NumeroVuelo3),
	vuelo(_, NumeroVuelo3, _, IdDestino, _, IdValor3, _, _, IdAvion3, _),
	IdAvion2 = IdAvion3,
	IdOrigen = IdDestino,
	valor(IdValor1, _, Distancia1),
	valor(IdValor2, _, Distancia2),
	valor(IdValor3, _, Distancia3),
	Distancia is Distancia1 + Distancia2 + Distancia3,
	write('La duracion del vuelo triangular ingresado es de:'),
	write(Distancia),write(' Km ').



% =============================================================================

% 10. Calcular el tiempo total que demanda la realización de un vuelo
%     triangular. Un vuelo triangular es aquel que primero realiza la ruta de
%     la ciudad A a la ciudad B, luego la ruta de la ciudad B a la ciudad C y
%     finalmente la ruta de la ciudad C a la ciudad A. Un vuelo triangular se
%     identifica con números de vuelos correlativos. El tiempo tal incluye el
%     tiempo de vuelo de cada tramo más los tiempos que el avión permanece en
%     una escala o ciudad.


convertir_total_minutos_a_hora(Minutos,HorasFi,MinutosFi):-
	HorasFi is div(Minutos,60),
	MinutosFi is mod(Minutos,60).

convertir_hora_a_integer(HoraString,Horas,Minutos):-
	split_string(HoraString,":","",[HorasStr,MinutosStr]),
	number_string(Horas,HorasStr),
	number_string(Minutos,MinutosStr).

diferencia_tiempo(HoraSalida,HoraLlegada,Difer):-
	convertir_hora_a_integer(HoraSalida,HT1,MT1),
	convertir_hora_a_integer(HoraLlegada,HT2,MT2),
	TotalMinutos1 is HT1 * 60 + MT1,
	TotalMinutos2 is HT2 * 60 + MT2,
	%Esto en el caso que el horario de llegada es al otro dia, o sea pasada las 00:00 Hs
	(TotalMinutos2 < TotalMinutos1 ->
	   TotalMinutos2_modif is TotalMinutos2 + 24 * 60;
	   TotalMinutos2_modif = TotalMinutos2),
	Difer is TotalMinutos2_modif - TotalMinutos1.

total_vuelo_duracion(HoraSalida,HoraLlegada,Duracion):-
	diferencia_tiempo(HoraSalida,HoraLlegada,Duracion).

tiempo_total_vuelo_triangular(NumVuelo):-
	vuelo(_, NumVuelo, IdOrigen,_, _, _, HoraSal1, HoraLle1, IdAvion1, Difer1),
	sumar_uno_numero_vuelo(NumVuelo, NumeroVuelo2),
	vuelo(_, NumeroVuelo2, _,_, _, _, HoraSal2, HoraLle2, IdAvion2, Difer2),
	IdAvion1 = IdAvion2,
	sumar_uno_numero_vuelo(NumeroVuelo2, NumeroVuelo3),
	vuelo(_, NumeroVuelo3, _,IdDestino, _, _, HoraSal3, HoraLle3, IdAvion3,Difer3),
	IdAvion2 = IdAvion3,
	IdOrigen = IdDestino,
	total_vuelo_duracion(HoraSal1,HoraLle1,Dura1),
	total_vuelo_duracion(HoraLle1,HoraSal2,Dura2),
	total_vuelo_duracion(HoraSal2,HoraLle2,Dura3),
	total_vuelo_duracion(HoraLle2,HoraSal3,Dura4),
	total_vuelo_duracion(HoraSal3,HoraLle3,Dura5),
	DifeCal1 is Difer1 * 60,
	DifeCal2 is Difer2 * 60,
	DifeCal3 is Difer3 * 60,
	DuracionFinal is Dura1 + Dura2 + Dura3 + Dura4 + Dura5 + DifeCal1 + DifeCal2 + DifeCal3,
	convertir_total_minutos_a_hora(DuracionFinal,HorasFin,MinutosFin),
	write('La duracion del vuelo triangular ingresado es de: '),
	write(HorasFin),write(' horas y '),
	write(MinutosFin), write(' minutos.').

%Menu principal que muestra las funciones que tengo para utilizar
menu_principal:-
	write('Sistema de vuelos y aviones:'),nl,
	nl,
	write('1)Escriba "ciudades_destino(OrigenCiudad, Destinos)." para mostrar las ciudades destino de una ciudad origen que ingrese.'),nl,
	nl,
	write('2)Escriba "rutas_modelo_o_fabricante(Modelo, Fabric, Origen, Destino, IdAvion)." para mostrar las rutas de un determinado modelo de avion o los aviones de un determinado fabricante.'),nl,
	nl,
	write('3)Escriba "rutas_avion(NumAvion, Origen, Destino)." para mostrar las rutas que hace un determinado avion de acuerdo a su rango de alcance y la distancia de la ruta.'),nl,
	nl,
	write('4)Escriba "vuelos_dia(Dia)." para mostrar los vuelos que se hacen en un determinado dia.'),nl,
	nl,
	write('5)Escriba "duracion_vuelo_final(Vuelo)." para mostrar la duracion de un determinado vuelo.'),nl,
	nl,
	write('6)Escriba "precio(NumVuelo)." para mostrar el precio en pesos argentinos de un pasaje en clase turista y en clase business para un determinado vuelo.'),nl,
	nl,
	write('7)Escriba "tripulacion(NumVuelo, Piloto, Copilotos, Azafatas)." para mostrar la tripulacion completa de un determinado vuelo.'),nl,
	nl,
	write('8)Escriba "ganancia(NumVuelo, TuristaCanti, BusinessCanti)." para mostrar ganancia que obtiene la empresa si logra vender un porcentaje determinado de pasajes en clase turista y otro porcentaje en clase business para un vuelo especifico.'),nl,
	nl,
	write('9)Escriba "distancia_vuelo_triangular(NumVuelo)." para mostrar la distancia recorrida por un avion que realiza un vuelo triangular.'),nl,
	nl,
	write('10)Escriba "tiempo_total_vuelo_triangular(NumVuelo)." para mostrar el tiempo total que demanda la realizacion de un vuelo triangular.'),nl.









