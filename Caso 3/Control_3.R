# CONTROL 3

# EJERCICIO 1
# Analizas una muestra aleatoria de sesiones de usuario y encuentras 
# en los siguentes tiempos (en minutos)

muestra <- c(9, 12, 8, 10, 11, 9, 10, 13, 8, 10, 11, 9, 10, 12, 7, 11, 10, 9, 12, 10, 8, 11, 9, 12, 10, 8, 11, 10,
             9, 12, 10, 8, 11, 9, 10, 12, 7, 11, 10, 9, 12, 10, 8, 11, 9, 12, 10, 8, 11, 10, 9, 12, 10, 8, 11, 9,
             10, 12, 7, 11, 10, 9, 12, 10, 8, 11, 9, 12, 10, 8, 11, 10, 9, 12, 10, 8, 11, 9, 10, 12, 7, 11, 10, 9,
             12, 10, 8, 11, 9, 12, 10, 8, 11, 10, 9, 12, 10, 8, 11, 9, 10, 12, 7, 11, 10, 9, 12, 10, 8, 11, 9, 12)

# 1.1 Realiza la estimación puntual del tiempo promedio

mean(muestra)

# Respuesta: 9.97
# Interpretacion: El tiempo promedio que los usuarios pasan por el sitio web
# antes de realizar una compra es de 9.97 min

# 1.2 Realiza la estimación por intervalo de confianza del 90% del 
# tiempo promedio

CI(muestra, 0.90)
10.201226-9.973214

# Respuesta: El intervalo de confianza del 90% es 9.74 a 10.20
# Interpretación: Se puede afirmar un con 90% de confianza que el promedio 
# del tiempo de los usurarios que pasan por el sitio Web antes de realizar una
# compra estará entre 9.74 y 10.20 minutos
# De otro modo el tiempo promedio que los usuarios pasan por el sitio web antes  
# de realizar una compra es de 9.97 minutos, con un margen de error de ± 0.228 
# minutos

# EJERCICIO 2
# Un estudio reciente ha reportado el número de semanas que toma a los jóvenes 
# conseguir su primer trabajo. El archivo BusquedaLaboral.xlsx muestra los 
# resultados del estudio para una muestra aleatoria de 50 estudiantes
# universitarios

# 2.1 Reporta la estimación puntual de la media poblacional del número de
# semanas que les toma a los jóvenes universitarios encontrar su primer empleo.

mean(BusquedaLaboral$Tiempo)

# Respuesta: 18.42
# Interpretacion: El promedio de tiempo que les toma a los jovenes 
# universitarios para encontrar su primer empleo es de 18.42 semanas

# 2.2 ¿Cuál es el margen de error de la estimación anterior? Utilice un 
# 99% de confianza.

CI(BusquedaLaboral$Tiempo, 0.99)
23.30796-18.42000

# Respuesta: Margen de Error = 23.31-18.42 = 4.88 (Margen de Error)
# Interpretacion: El promedio de tiempo que les toma a los jovenes
# universitarios encontrar su primer empleo es de 18.42 semanas con un margen de
# error de ± 4.88 semanas

# 2.3 Reporta el intervalo de confianza del 99% para la media poblacional del 
# tiempo que les lleva a los jóvenes universitarios encontrar su primer empleo.
# Interpreta el Intervalo

# Respuesta: El intervalo al 99% de confianza es de 13.53 a 23.31
# Interpretacion: Se puede afirmar con un 99% de confianza que el promedio de 
# tiempo que les toma a los jovenes universitarios encontrar su primer empleo
# estará entre 13.53 y 23.31 semanas

# EJERCIO 3
# Supongamos que en tu rol de analista de datos estás investigando el precio 
# medio de una criptomoneda, como Bitcoin (BTC), durante un período de tiempo 
# específico. Tomas una muestra aleatoria de 50 precios diarios de Bitcoin en 
# dólares estadounidenses (USD).

MuestraBTC <- c(55000, 56000, 57000, 58000, 59000, 60000, 61000, 62000, 63000, 64000, 65000, 66000, 67000,
            68000, 69000, 70000, 71000, 72000, 73000, 74000, 75000, 76000, 77000, 78000, 79000, 80000,
            81000, 82000, 83000, 84000, 85000, 86000, 87000, 88000, 89000, 90000, 91000, 92000, 93000,
            94000, 95000, 96000, 97000, 98000, 99000, 100000, 101000, 102000, 103000)

# 3.1 . Realiza la estimación por intervalo de confianza del 90% del precio 
# promedio diario del Bitcoin

CI(MuestraBTC, 0.90)
82423.62-79000.00 
 
# Respuesta: El intervalo de 90% de confianza = (75,576.38$ ; 82,423.62$)
# Interpretacion: Al 90% de confianza el promedio del precio del BTC estara
# entre el $75,576.38 y $82,423.62 dolares
# Interpretacion:El precio promedio del BTC es de $79,000 dolares con un margen 
# de error de ± $3,423.52 dolares

# 3.2  Idem del 99% del precio promedio diario del Bitcoin.

CI(MuestraBTC,0.99)
84475.03-79000.00

# Respuesta: El intervalo de 90% de confianza = ($73,524.97 ; $84,475.03)
# Interpretacion: Al 90% de confianza el promedio del precio del BTC estara
# entre el $73,524.97 y $84,475.03 dolares
# Interpretacion:El precio promedio del BTC es de $79,000 dolares con un margen 
# de error de ± $5,475.03 dolares

# 3.3 Idem del 99.9% del precio promedio diario del Bitcoin

CI(MuestraBTC, 0.999)
86154.69-79000.00

# Respuesta: El intervalo de 90% de confianza = ($71,845.31 ; $86,154.69)
# Interpretacion: Al 90% de confianza el promedio del precio del BTC estara
# entre el $71,845.31 y $86,154.69 dolares
# Interpretacion:El precio promedio del BTC es de $79,000 dolares con un margen 
# de error de ± $7,154.69 dolares

# 3.4 A partir de los resultados anteriores, ¿qué ocurre con la precisión de la 
# estimación a medida que aumenta el % de confianza?

# Respuesta: A medida que el nivel de confianza aumenta, los precios mínimos 
# disminuyen y los precios máximos aumentan.
# De otra manera, a medida que la confianza aumenta, el precio promedio se 
# mantiene constante, pero el margen de error aumenta.

# EJERCICIO 4
# Supongamos que estás analizando la proporción de clientes que han realizado 
# al menos una compra en los últimos tres meses en una tienda en línea. Tomamos 
# una muestra aleatoria de 1000 clientes y encontramos que 600 de ellos han 
# realizado al menos una compra en los últimos tres meses. 

# 4.1 . Calcula el intervalo de confianza del 99% para la proporción de 
# clientes que han realizado al menos una compra en esta tienda en línea en 
# los últimos tres meses.

Compradores <- 600
MuestraClientes <- 1000

BinomCI(Compradores,MuestraClientes, 0.99)

# Respuesta: P = 60% (60% de los compradores han realizado una compra en los
# ultimos tres meses)
# Respuesta: El intervalo de 99% de confianza = (0.5596 ; 0.6391)

# 4.2  Interpreta el intervalo de confianza hallado

# Respuesta: Teniendo una confianza del 99%, la proporcion de los clientes que
# ha realizado una compra en los ultimos 3 meses se encuentra entre un 55.96%
# y 63.91%

# EJERCICIO 5
# Supongamos ahora que en tu rol de analista de datos para una empresa de 
# marketing digital estás interesado en estimar la proporción de cuentas de 
# INSTAGRAM localizadas en Bolivia con más de 1000 seguidores, de manera de 
# ayudar a tus clientes a tomar decisiones informadas sobre sus estrategias de 
# marketing en redes sociales.

# 5.1 Reporte una tabla con las frecuencias absolutas y relativas de la variable 
# MilSeguidores en la muestra

# Frecuencias Absoluta
Tabla_IG <- table(Instagram$MilSeguidores)
Tabla_IG

#Frecuencia Relativa
Tabla_relativa_IG <- prop.table(Tabla_IG)
Tabla_relativa_IG

# Tabla de Frecuencias
Frecuencias <- cbind(Tabla_IG, Tabla_relativa_IG)
Frecuencias

# Respuesta: Mil o mas seguidores = 45; Menos de mil seguidores = 105

# 5.2. Reporte la estimación puntual de la proporción de usuarios que tiene 
# 1000 seguidores o más en Bolivia.

MiloMas <- 45
MuestraUsIg <- 150

BinomCI(MiloMas,MuestraUsIg, 0.95)

# Respuesta: P=30% (El 30% tiene 1000 o mas seguidores en Instagram)

# 5.3. Reporte la esimación por intervalo de confianza del 95% de la proporción 
# de usuarios que tiene 1000 seguidores o más en Bolivia.

# Respuesta: El intervalo del 95% de confianza = (0.2324 ; 0.3776)
# Interpretacion: Teniendo una confianza del 95%, la proporcion de los usuarios 
# en Instagram que tienen 1000 o mas seguidores en Bolivia se encuentra entre 
# un 23.24% y 37.76%




