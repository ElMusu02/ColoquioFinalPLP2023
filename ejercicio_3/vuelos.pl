
% Hechos que almacenan las rutas de los vuelos
ruta('Buenos Aires', 'Roma', 800, 11136, 4).
ruta('Buenos Aires', 'Lima', 280, 3147, 2).
ruta('Buenos Aires', 'Madrid', 900, 10114, 4).
ruta('Buenos Aires', 'Cordoba', 50, 656, 0).
ruta('Buenos Aires', 'Mendoza', 60, 984, 0).
ruta('Buenos Aires', 'Miami', 500, 6960, 1).
ruta('Buenos Aires', 'Montevideo', 40, 203, 0).
ruta('Buenos Aires', 'New York', 600, 8496, 1).
ruta('Buenos Aires', 'Punta Cana', 400, 5744, 1).
ruta('Buenos Aires', 'Santiago', 100, 1400, 1).
ruta('Buenos Aires', 'Sao Paulo', 120, 1680, 1).
ruta('Buenos Aires', 'Ushuaia', 80, 2376, 0).


ruta(Origen, Destino, Precio, Distancia, D) :- 
	ruta(Destino, Origen, Precio, Distancia, Diferencia),
	D is Diferencia * -1,
	!. 
