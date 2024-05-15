# PRACTICA 5
# Choque Fernandez Dania /CI:10706137 
# Martinez Alcoba Rosalia / CI:7112436
# Martinez Maygua Andrea / CI:12689018


# EJERCICIO 1
# Se está investigando si el rendimiento promedio diario de una nueva 
# criptomoneda, CryptoZ, es diferente del rendimiento promedio diario del 
# Bitcoin, que se estima en un 2%. Se toma una muestra aleatoria de 30 días de 
# rendimientos diarios de CryptoZ y se encuentran los siguientes rendimientos 
# (expresados en %)
# Utilizando un nivel de significancia del 1%, ¿hay suficiente evidencia para afirmar 
# que el rendimiento promedio diario de CryptoZ difiere significativamente del rendimiento 
# promedio diario del Bitcoin?

# i). Formule las hipótesis nula y alternativa que se usarán para determinar si 
# existen diferenciassignificativas en el rendimiento promedio diario de CriptoZ 
# con respecto al rendimiento promedio diario del Bitcoin.
# ii).  Reporte el valor del estadístico de prueba.
# iii). Reporte el P-valor de la prueba.
# iv).  Reporte la decisión estadística de la prueba.
# v).   Reporte la conclusión de la prueba .

Rendimientos <- c(0.025, 0.023, 0.026, 0.021, 0.024, 0.027, 0.019, 0.028, 0.023, 0.022, 0.024, 0.020, 0.026, 0.023, 0.027, 0.021, 0.025, 0.028, 0.022, 0.024)

# i). Respuesta: H0: μCryptoZ = 2% (2%)
#                H1: μCryptoZ ≠ μBitcoin (2%) 
 
t.test(Rendimientos, mu=0.02, conf.level = 0.99)

# ii).  Respuesta: Valor estadistico: t = 6.673 con 19 grados de libertad
# iii). Respuesta: P-valor= 2.216e-06 o 0.000002216
# iv).  Respuesta: Dado que el valor-p = 0.000002216 < 0,01 (nivel de 
# significación) se rechaza la hipotesis nula o H0 y se acepta la hipotesis 
# alternativa o H1
# v).   Respuesta: Con un nivel de significancia del 1%, se concluye que la 
# muestra de rendimientos diarios de 20 días proporciona suficiente evidencia
# para afirmar que el rendimiento promedio de CryptoZ difiere del rendimiento 
# promedio del Bitcoin, que es del 2%


 
# EJERCICIO 2
# Según la Asociación del Comercio Automotor de Bolivia (A.C.A.B.), el precio 
# medio de un auto usado es de USD 8500. El gerente de una automotora de Tarija 
# analizó una muestra de 50 autos usados vendidos recientemente en ese 
# establecimiento, con objeto de determinar si la media de sus precios difería 
# del precio medio en todo el país. Los precios en dólares de los 50 autos se 
# encuentran en NEO en el archivo denominado Autos.xlsx (Carpeta: Base de Datos). 
# Se desea trabajar con un nivel de significancia del 5%.

# i). Estime el precio promedio de venta de la muestra de autos de la automotora 
# de Tarija.
# ii). Formule las hipótesis nula y alternativa que se usarán para determinar si 
# existen diferenciassignificativas en el precio promedio de venta de la 
# automotora de Tarija con respecto al precio promedio del país
# iii).  Reporte el valor del estadístico de prueba.
# iv).   Reporte el P-valor de la prueba.
# v).    Reporte la decisión estadística de la prueba.
# vi).   Reporte la conclusión de la prueba . 

t.test(Autos$Precio, mu=8500, conf.level = 0.95)

# i).   Respuesta: promedio= $9273.94
# ii).  Respuesta: H0 = $8500
#                  H1 ≠ $8500
# iii). Respuesta: Valor Estadistico: t=3.8272 con 49 grados de libertad
# iv).  Respuesta: P-valor: v-value = 0.000368
# v).   Respuesta:  Dado que el valor-p = 0.000368 < 0,05 (nivel de 
# significación) se rechaza la hipotesis nula o H0 y se acepta la hipotesis 
# alternativa o H1
# vi).  Respuesta: Con un nivel de significancia del 5%, se concluye que la 
# muestra del precio 50 autos proporciona suficiente evidencia
# para afirmar que el precio promedio de la automotora en Tarija difiere del
# precio promedio de $8,500 que reporta la A.C.A.B

# EJERCICIO 3
# Un estudio sugiere que al menos el 25% de los negocios online aceptan Bitcoin 
# como forma de pago. Se toma una muestra aleatoria de 400 comercios online del 
# país y se encuentra que 110 de ellos aceptan Bitcoin como forma de pago. 
# Usando un nivel de significación del 1%, ¿proporciona esto suficiente 
# evidencia para respaldar la afirmación del estudio? 

# i). Estime la proporción de comercios online del país que aceptan Bitcoin 
# como forma de pago.
# ii). Formule las hipótesis nula y alternativa que se usarán para investigar 
# la afirmación del estudio.
# iii). Reporte el P-valor de la prueba.
# iv). Reporte la decisión estadística de la prueba.
# v). Reporte la conclusión de la prueba

binom.test(110, 400, 0.25, conf.level = 0.99)

# i).   Respuesta: Proporcion = 0.275 o 27.5%
# ii).  Respuesta: H0: p = 25%, 
#                  H1: p ≠ 25%
# iii). Respuesta: Valor-p = 0.2484
# iv).  Respuesta: Dado que el valor-p = 0.2484 > 0.01 (nivel de significación), se 
# concluye que no se puede rechazar la hipotesis nula.Por lo tanto, se acepta la hipotesis
# nula y se rechaza la hipotesis alternativa.
# v).   Respuesta: Basado en la evidencia que proporciona la muesta y con nivel de 
# significacion del 1%, no rechazamos la afirmacion de que al menos 25% de los negocios 
# aceptan Bitcoin como forma de pago.