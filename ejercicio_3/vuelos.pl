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
ciudad(1, 'Buenos Aires', 'Argentina').
ciudad(2, 'Madrid', 'España').
ciudad(3, 'Montevideo', 'Uruguay').
ciudad(4, 'Cordoba', 'Argentina').
ciudad(5, 'Punta Cana', 'Republica Dominicana').
ciudad(6, 'Miami', 'Estados Unidos').
ciudad(7, 'New York', 'Estados Unidos').
ciudad(8, 'Ushuaia', 'Argentina').
ciudad(9, 'Sao Paulo', 'Brasil').
ciudad(10, 'Lima', 'Peru').
ciudad(11, 'Santiago', 'Chile').
ciudad(12, 'Mendoza', 'Argentina').
ciudad(13, 'Roma', 'Italia').


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
vuelo(1, 'AR1140', 1, 13, ['LU', 'MA', 'MI', 'JU', 'VI'], 1, '22:40', '16:00', 4, -4).
vuelo(2, 'AR1141', 13, 1, ['MA', 'MI', 'JU', 'VI', 'SA'], 1, '18:15', '04:40', 4, 4).
vuelo(3, 'AR1132', 1, 2, ['LU', 'MA', 'MI', 'JU', 'VI', 'SA', 'DO'], 3, '23:55', '04:40', 4, -4).
vuelo(4, 'AR1133', 2, 1, ['LU', 'MA', 'MI', 'JU', 'VI', 'SA', 'DO'], 3, '19:00', '04:05', 4, 4).
vuelo(5, 'AR1386', 1, 3, ['LU', 'MA', 'MI', 'JU', 'VI', 'SA', 'DO'], 7, '08:00', '08:45', 1, 0).
vuelo(6, 'AR1387', 3, 1, ['LU', 'MA', 'MI', 'JU', 'VI', 'SA', 'DO'], 7, '09:15', '10:00', 1, 0).
vuelo(7, 'AR1134', 1, 2, ['MA', 'JU', 'SA'], 3, '13:40', '05:55', 4, -4).
vuelo(8, 'AR1135', 2, 4, ['MI', 'VI', 'DO'], 13, '08:30', '17:35', 4, 4).
vuelo(9, 'AR1136', 4, 1, ['MI', 'VI', 'DO'], 4, '19:00', '20:15', 4, 0).
vuelo(10, 'AR1324', 1, 5, ['LU', 'MA', 'VI', 'SA'], 9, '02:25', '09:40', 8, 1).
vuelo(11, 'AR1325', 5, 1, ['LU', 'MA', 'VI', 'SA'], 9, '11:10', '19:55', 8, -1).
vuelo(12, 'AR1302', 1, 6, ['LU', 'MA', 'MI', 'JU', 'VI', 'SA', 'DO'], 6, '22:55', '06:05', 7, 1).
vuelo(13, 'AR1303', 6, 1, ['LU', 'MA', 'MI', 'JU', 'VI', 'SA', 'DO'], 6, '17:15', '04:10', 6, -1).
vuelo(14, 'AR1300', 1, 7, ['LU', 'MA', 'MI', 'JU', 'VI', 'SA', 'DO'], 8, '23:55', '09:00', 6, 1).
vuelo(15, 'AR1301', 7, 1, ['LU', 'MA', 'MI', 'JU', 'VI', 'SA', 'DO'], 8, '15:35', '04:35', 6, -1).
vuelo(16, 'AR1880', 1, 8, ['LU', 'MA', 'MI', 'JU', 'VI', 'SA', 'DO'], 12, '15:50', '19:25', 5, 0).
vuelo(17, 'AR1881', 8, 1, ['LU', 'MA', 'MI', 'JU', 'VI', 'SA', 'DO'], 12, '21:00', '00:25', 5, 0).
vuelo(18, 'AR1238', 1, 9, ['LU', 'MA', 'MI', 'JU', 'VI', 'SA', 'DO'], 11, '16:15', '18:55', 2, 1).
vuelo(19, 'AR1239', 9, 1, ['LU', 'MA', 'MI', 'JU', 'VI', 'SA', 'DO'], 11, '19:50', '22:45', 2, -1).
vuelo(20, 'AR1364', 1, 10, ['LU', 'MA', 'MI', 'JU', 'VI', 'SA', 'DO'], 2, '18:50', '21:35', 3, 2).
vuelo(21, 'AR1365', 10, 1, ['LU', 'MA', 'MI', 'JU', 'VI', 'SA', 'DO'], 2, '22:50', '05:05', 3, -2).
vuelo(22, 'AR1284', 1, 11, ['LU', 'MA', 'MI', 'JU', 'VI', 'SA', 'DO'], 10, '11:10', '13:30', 1, 0).
vuelo(23, 'AR1285', 11, 12, ['LU', 'MA', 'MI', 'JU', 'VI', 'SA', 'DO'], 10, '14:30', '15:25', 1, 0).
vuelo(24, 'AR1286', 12, 1, ['LU', 'MA', 'MI', 'JU', 'VI', 'SA', 'DO'], 5, '16:00', '17:35', 1, 0).


% Hechos que almacenan los aviones
% avion(id, fabricante, modelo, rango_alcance, aisentos_turista, asientos_bussines)
% Orden de los parametros
% 1: id
% 2: fabricante
% 3: modelo
% 4: rango_alcance
% 5: asientos_turista
% 6: asientos_bussines
avion(1, 'Boeing', '737-700', 5000, 120, 8).
avion(2, 'Boeing', '737-800', 4500, 162, 8).
avion(3, 'Boeing', '737 MAX 8', 5000, 162, 8).
avion(4, 'Airbus', 'A330-200', 12000, 243, 22).
avion(5, 'Airbus', 'A330-200', 10000, 299, 0).
avion(6, 'Airbus', 'A330-200', 12000, 248, 24).
avion(7, 'Airbus', 'A330-200', 10000, 244, 25).
avion(8, 'Airbus', 'A330-200', 10000, 186, 36).


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
%  Por ejemplo,
%  ==
%  ?- ciudades_destino('Buenos Aires', Destino).
%  Destino = 'Roma' ;
%  Destino = 'Madrid' ;
%  Destino = 'Montevideo' ;
%  Destino = 'Madrid' ;
%  Destino = 'Punta Cana' ;
%  Destino = 'Miami' ;
%  Destino = 'New York' ;
%  Destino = 'Ushuaia' ;
%  Destino = 'Ushuaia' ;
%  Destino = 'Sao Paulo' ;
%  Destino = 'Lima' ;
%  Destino = 'Santiago'.
%  ==
ciudades_destino(O, Destino) :- 
	ciudad(IdOrigen, O, _),
	vuelo(_, _, IdOrigen, IdDestino, _, _, _, _, _, _),
	ciudad(IdDestino, Destino, _).

% =============================================================================

% 2. Informar las rutas que realiza un modelo determinado de avión o los 
%    aviones de un fabricante específico. 
%
% ¿DETERMINAR MAS DATOS SOBRE EL AVION?

%% rutas_modelo_o_fabricante(+M, +F, -Origen, -Destino, -IdAvion)
%
%  Busca las rutas que realiza un modelo de avion M, o un fabricante F.
%
%  Por ejemplo,
%  ==
%  ?- rutas_modelo_o_fabricante(_, 'Boeing', Origen, Destino, IdAvion).
%  Origen = 'Buenos Aires',
%  Destino = 'Montevideo',
%  IdAvion = 1 ;
%  Origen = 'Montevideo',
%  Destino = 'Buenos Aires',
%  IdAvion = 1 ;
%  Origen = 'Buenos Aires',
%  Destino = 'Santiago',
%  IdAvion = 1 ;
%  Origen = 'Santiago',
%  Destino = 'Mendoza',
%  IdAvion = 1 ;
%  Origen = 'Mendoza',
%  Destino = 'Buenos Aires',
%  IdAvion = 1 ;
%  Origen = 'Buenos Aires',
%  Destino = 'Sao Paulo',
%  IdAvion = 2 ;
%  Origen = 'Sao Paulo',
%  Destino = 'Buenos Aires',
%  IdAvion = 2 ;
%  Origen = 'Buenos Aires',
%  Destino = 'Lima',
%  IdAvion = 3 ;
%  Origen = 'Lima',
%  Destino = 'Buenos Aires',
%  IdAvion = 3 ;
%
%  ?- rutas_modelo_o_fabricante('737-700', _, Origen, Destino, IdAvion).
%  Origen = 'Buenos Aires',
%  Destino = 'Montevideo',
%  IdAvion = 1 ;
%  Origen = 'Montevideo',
%  Destino = 'Buenos Aires',
%  IdAvion = 1 ;
%  Origen = 'Buenos Aires',
%  Destino = 'Santiago',
%  IdAvion = 1 ;
%  Origen = 'Santiago',
%  Destino = 'Mendoza',
%  IdAvion = 1 ;
%  Origen = 'Mendoza',
%  Destino = 'Buenos Aires',
%  IdAvion = 1.
%  ==
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
%  Por ejemplo,
%  ==
%  ?- rutas_avion(2, Origen, Destino).
%  Origen = 'Buenos Aires',
%  Destino = 'Lima' ;
%  Origen = 'Lima',
%  Destino = 'Buenos Aires' ;
%  Origen = 'Cordoba',
%  Destino = 'Buenos Aires' ;
%  Origen = 'Mendoza',
%  Destino = 'Buenos Aires' ;
%  Origen = 'Buenos Aires',
%  Destino = 'Montevideo' ;
%  Origen = 'Montevideo',
%  Destino = 'Buenos Aires' ;
%  Origen = 'Buenos Aires',
%  Destino = 'Santiago' ;
%  Origen = 'Santiago',
%  Destino = 'Mendoza' ;
%  Origen = 'Buenos Aires',
%  Destino = 'Sao Paulo' ;
%  Origen = 'Sao Paulo',
%  Destino = 'Buenos Aires' ;
%  Origen = 'Buenos Aires',
%  Destino = 'Ushuaia' ;
%  Origen = 'Buenos Aires',
%  Destino = 'Ushuaia' ;
%  ==
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
%
% FALTA ORDENAR POR HORA

:- use_module(library(lists)).

%% vuelos_dia(+D, -IdVuelo)
%
%  Busca los vuelos dado un dia D, que puede ser 'LU', 'MA', 'MI', 'JU', 
%  'VI', 'SA' o 'DO'. Los vuelos estan ordenados por horario de salida.
%
%  Por ejemplo,
%  ==
%  ?- vuelos_dia('LU', IdVuelo).
%  
%  ==
vuelos_dia(D, IdVuelo) :-
	vuelo(IdVuelo, _, _, _, Frecuencia, _, _, _, _, _),
	member(D, Frecuencia).
	%append(H, HorarioSalida),

% =============================================================================

% 5. Calcular la duración de un determinado vuelo, considerando los horarios de 
%    salida y llegada y las diferencias horarias que existen entre las ciudades 
%    de origen y destino. 

:- use_module(library(date_time)).

%duracion_vuelo(N, Duracion) :-
%	vuelo(_, N, _, _, _, _, Salida, Llegada, _, Diferecia),
%	HorarioLlegada is Llegada * 

% =============================================================================

% 6. Calcular el precio en pesos argentinos de un pasaje en clase turista y en 
%    clase business para un determinado vuelo: 
% 	 	- Para los vuelos internacionales (el origen o destino es una ciudad 
%		  argentina y el otro no), el precio en clase turista se obtiene 
%  		  sumando el precio base más las tasas e impuestos (equivalentes al 60% 
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
%  Por ejemplo,
%  ==
%  ?- precio('AR1140', PrecioTurista, PrecioBussines).
%  Ingrese la cotizacion oficial del dolar: 
%  |: 100.
%
%  PrecioTurista = 156000.00000000003,
%  PrecioBussines = 343200.0000000001.
%  ==
precio(N, PrecioTurista, PrecioBussines) :-
	vuelo(_, N, IdOrigen, IdDestino, _, IdValor, _, _, _, _),
	valor(IdValor, _Precio, _),
	ciudad(IdOrigen, _, PaisOrigen),
	ciudad(IdDestino, _, PaisDestino),
	writeln('Ingrese la cotizacion oficial del dolar: '),
	read(_Cotizacion),
	(PaisOrigen = PaisDestino ->
		precio_turista_nacional(__Impuesto, __Cargo)
	;	precio_turista_internacional(__Impuesto, __Cargo)
	),
	PrecioTurista is (_Precio * (1 + __Impuesto + __Cargo)) * _Cotizacion,
	precio_bussines(__CargoBussines),
	PrecioBussines is PrecioTurista * (1 + __CargoBussines). 

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
%  Por ejemplo,
%  ==
%  ?- 
%  ==
tripulacion(N, Piloto, Copilotos, Azafatas) :-
	duracion_vuelo(N, Duracion),	% falta implementar el inciso 5
	vuelo(_, N, _, _, _, _, _, _, IdAvion, _),
	avion(IdAvion, _, _, _, Turista, Business),
	(Duracion > 8 ->
		tripulacion_vuelo_largo(Copilotos, __Asafata)
	;	tripulacion_vuelo_corto(Copilotos, __Asafata)	
	),
	Azafatas is round((Turista + Business) / __Asafata),
	Piloto is 1.

% =============================================================================

% 8. Calcular la ganancia que obtiene la empresa si logra vender un porcentaje 
%    determinado de pasajes en clase turista y otro porcentaje de pasajes en 
%    clase business para un vuelo específico.
%

%% ganancia(+N, -Piloto, -Copilotos, -Azafatas)
%
%  Calcula la ganancia en dolares dado un vuelo N, el porcentaje de vendido del 
%  vuelo en clase turista T y bussines B. 
%
%  Por ejemplo,
%  ==
%  ?- ganancia('AR1386', 50, 50, Ganancia).
%  Ganancia = 9816.0.
%  ==
ganancia(N, T, B, Ganancia) :-
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
	Ganancia is TuristaVendidos * GananciaTurista + BussinesVendidos * GananciaBussines.