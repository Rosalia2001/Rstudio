# Practico 2
# Choque Fernandez Dania /CI:10706137 
# Martinez Alcoba Rosalia / CI:7112436
# Martinez Maygua Andrea / CI:12689018

# Ejercicio 1, Supongamos que el precio diario del Bitcoin (BTC) 
# sigue una distribución normal con una media de $52000 y
# una desviación estándar de $8000. 

mu <- 52000
sigma <- 8000

# 1. Probabilidad que el precio de Bitcoin sea inferior a $40.000
pnorm (40000, mu, sigma)
# Respuesta: 0.06681 o 6.68%

# 2. Probabilidad que el precio de Bitcoin sea superior a $70.000
1 - pnorm(70000, mu, sigma)
# Respuesta: 0.0122 o 1.22%

# 3. probabilidad que el precio de Bitcoin este entre $40000 y $50000 
pnorm(50000, mu, sigma) - pnorm(40000, mu, sigma)
# Respuesta: 0.3345 o 33.45%

# 4. Precio por debajo del cual se encuentra el 90% de los precios de Bitcoin
qnorm(0.90, mu, sigma)
# Respuesta: $62.252,41

# 5. Precio por encima del cual se encuentra el 80% de los precios de Bitcoin 
qnorm(0.20, mu, sigma)
# Respuesta: $45.267,03

# 6. Percentil 75 de los precios
qnorm(0.75, mu, sigma)
# Respuesta: $57.395,92

# 1. Respuesta: Prob. que el ₿ < $40.000 es del 6.68%
# 2. Respuesta: Prob. que el ₿ > $70.000 es del 1.22%
# 3. Respuesta: Prob. que el $40.000 < ₿ < $70.000 es del 33.45%
# 4. Respuesta: El precio por debajo del cual se encuentra el 90% de los
# precios del BTC es de $62.252,41
# 5. Respuesta: El precio por encima que se encuentra el 80% de los precios
# del BTC es de $42.267 
# 6. Resouesta: El 75% de los precios en un aleatorio es de $57.395,92


#  La media de ABC es de $800 con una desviación estándar de $500, mientras 
#  que la media de XYZ es $900 con una desviación estándar de $50

muABC <- 800
sigmaABC <- 500

muXYZ <- 900
sigmaXYZ <- 50

#  1.Mayor volatilidad en sus precios diarios

# Moneda ABC
muABC - 3*(sigmaABC)
muABC + 3*(sigmaABC)
# Respuesta: El precio min. de la moneda ABC es de $-700 y el max. de $2.300 

# Moneda XYZ
muXYZ - 3*(sigmaXYZ)
muXYZ + 3*(sigmaXYZ)
# Respuesta: El precio min de la moneda XYZ es de $750 y el max. de $1.050

#  2. cotizarse por encima de los $1000
1 - pnorm(1000, muABC, sigmaABC)
1-  pnorm(1000, muXYZ, sigmaXYZ)
# Respuesta ABC: 0.3446 o 34.46 
# Respuesta XYZ: 0.0227 o 2.27%

#  3. Encuentre un intervalo centrado en la media que contenga 
# al 95% de los precios ABC
qnorm(0.025, muABC, sigmaABC)
qnorm(0.975, muABC, sigmaABC)
# Respuesta a: $-179,98
# Respuesta b: $1.779,98

# 4. Los mismo para la moneda XYZ
qnorm(0.025, muXYZ, sigmaXYZ)
qnorm(0.975, muXYZ, sigmaXYZ)
# Respuesta a: $802
# Respuesta b: $ 997,99


# 1. Respuesta: La moneda que tiene mayor volatilidad es la moneda ABC. Esto se 
# evidencia no solo por la desviación estándar que presenta, sino también por 
# los extremos de su precio. El precio mínimo de la moneda ABC representa una 
# pérdida total de su valor, mientras que su precio máximo es el doble del 
# valor de la moneda XYZ. Aunque es cierto que a mayor riesgo se espera una 
# mayor rentabilidad, este riesgo significativo es un determinante clave de 
# la volatilidad de la moneda.
# 2. Respuesta: La probabilidad de que la moneda ABC cotice por encima de los 
# $1.000 es del 34,46%, ya que el precio máximo al que puede llegar la moneda 
# ABC es de $2.300. En contraste, la probabilidad de que la moneda XYZ cotice 
# por encima de los $1.000 es de 2,27%, dado que el precio máximo de la moneda 
# XYZ es de $1.050.
# 3. Respuesta: El 95% de los precios de la moneda ABC se encuentran en un
# rango de -$179,98 y $1.779,98
# 4. Respuesta: El 95% de los precios de la moneda XYZ se encuentran en un
#  rango de $802 y $997,99









