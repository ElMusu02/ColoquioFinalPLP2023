% Hechos sobre los paises y capitales de America
pais('Antigua y Barbuda', 'America', 'Saint John\'s').
pais('Argentina', 'America', 'Buenos Aires').
pais('Bahamas', 'America', 'Nassau').
pais('Barbados', 'America', 'Bridgetown').
pais('Belice', 'America', 'Belmopan').
pais('Bolivia', 'America', 'Sucre').
pais('Brasil', 'America', 'Brasilia').
pais('Canada', 'America', 'Ottawa').
pais('Chile', 'America', 'Santiago').
pais('Colombia', 'America', 'Bogota').
pais('Costa Rica', 'America', 'San Jose').
pais('Cuba', 'America', 'La Habana').
pais('Dominica', 'America', 'Roseau').
pais('Ecuador', 'America', 'Quito').
pais('El Salvador', 'America', 'San Salvador').
pais('Estados Unidos', 'America', 'Washington D. C.').
pais('Granada', 'America', 'Saint George\'s').
pais('Guatemala', 'America', 'Ciudad de Guatemala').
pais('Guyana', 'America', 'Georgetown').
pais('Haiti', 'America', 'Puerto Principe').
pais('Honduras', 'America', 'Tegucigalpa').
pais('Jamaica', 'America', 'Kingston').
pais('Mexico', 'America', 'Ciudad de Mexico').
pais('Nicaragua', 'America', 'Managua').
pais('Panama', 'America', 'Ciudad de Panama').
pais('Paraguay', 'America', 'Asuncion').
pais('Peru', 'America', 'Lima').
pais('Republica Dominicana', 'America', 'Santo Domingo').
pais('San Cristobal y Nieves', 'America', 'Basseterre').
pais('San Vicente y las Granadinas', 'America', 'Kingstown').
pais('Santa Lucia', 'America', 'Castries').
pais('Surinam', 'America', 'Paramaribo').
pais('Trinidad y Tobago', 'America', 'Puerto Espana').
pais('Uruguay', 'America', 'Montevideo').
pais('Venezuela', 'America', 'Caracas').


% Hechos sobre los paises y capitales de Europa
pais('Albania', 'Europa', 'Tirana').
pais('Alemania', 'Europa', 'Berlín').
pais('Andorra', 'Europa', 'Andorra la Vella').
pais('Armenia', 'Europa', 'Ereván').
pais('Austria', 'Europa', 'Viena').
pais('Azerbaiyan', 'Europa', 'Bakú').
pais('Belgica', 'Europa', 'Bruselas').
pais('Bielorrusia', 'Europa', 'Minsk').
pais('Bosnia y Herzegovina', 'Europa', 'Sarajevo').
pais('Bulgaria', 'Europa', 'Sofía').
pais('Chipre', 'Europa', 'Nicosia').
pais('Ciudad del Vaticano', 'Europa', 'Ciudad del Vaticano').
pais('Croacia', 'Europa', 'Zagreb').
pais('Dinamarca', 'Europa', 'Copenhague').
pais('Eslovaquia', 'Europa', 'Bratislava').
pais('Eslovenia', 'Europa', 'Liubliana').
pais('Espana', 'Europa', 'Madrid').
pais('Estonia', 'Europa', 'Tallin').
pais('Finlandia', 'Europa', 'Helsinki').
pais('Francia', 'Europa', 'París').
pais('Georgia', 'Europa', 'Tiflis').
pais('Grecia', 'Europa', 'Atenas').
pais('Hungria', 'Europa', 'Budapest').
pais('Irlanda', 'Europa', 'Dublín').
pais('Islandia', 'Europa', 'Reikiavik').
pais('Italia', 'Europa', 'Roma').
pais('Kazajistan', 'Europa', 'Nur-Sultán').
pais('Letonia', 'Europa', 'Riga').
pais('Liechtenstein', 'Europa', 'Vaduz').
pais('Lituania', 'Europa', 'Vilna').
pais('Luxemburgo', 'Europa', 'Luxemburgo').
pais('Macedonia del Norte', 'Europa', 'Skopie').
pais('Malta', 'Europa', 'La Valeta').
pais('Moldavia', 'Europa', 'Chisináu').
pais('Monaco', 'Europa', 'Mónaco').
pais('Montenegro', 'Europa', 'Podgorica').
pais('Noruega', 'Europa', 'Oslo').
pais('Paises Bajos', 'Europa', 'Ámsterdam').
pais('Polonia', 'Europa', 'Varsovia').
pais('Portugal', 'Europa', 'Lisboa').
pais('Reino Unido', 'Europa', 'Londres').
pais('Republica Checa', 'Europa', 'Praga').
pais('Rumania', 'Europa', 'Bucarest').
pais('Rusia', 'Europa', 'Moscú').
pais('San Marino', 'Europa', 'San Marino').
pais('Serbia', 'Europa', 'Belgrado').
pais('Suecia', 'Europa', 'Estocolmo').
pais('Suiza', 'Europa', 'Berna').
pais('Turquia', 'Europa', 'Ankara').
pais('Ucrania', 'Europa', 'Kiev').


% Hechos que almacenan las distancias entre ciudades capitales
distancia('Buenos Aires', 'Saint John\'s', 6666).
distancia('Buenos Aires', 'Ottawa', 8932).
distancia('Buenos Aires', 'Nassau', 6583).
distancia('Buenos Aires', 'Bridgetown', 5092).
distancia('Buenos Aires', 'Belmopan', 6367).
distancia('Buenos Aires', 'Sucre', 2315).
distancia('Buenos Aires', 'Brasilia', 2334).
distancia('Buenos Aires', 'Santiago', 1138).
distancia('Buenos Aires', 'Bogota', 4661).
distancia('Buenos Aires', 'San Jose', 5545).
distancia('Buenos Aires', 'La Habana', 7057).
distancia('Buenos Aires', 'Roseau', 5306).
distancia('Buenos Aires', 'Quito', 4182).
distancia('Buenos Aires', 'San Salvador', 5860).
distancia('Buenos Aires', 'Washington D. C.', 8527).


distancia_buenos_aires(Pais, C, D) :-
	pais(Pais, 'America', C),
	distancia('Buenos Aires', C, D).