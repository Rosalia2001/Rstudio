# CONTROL 6

# Suponga que una empresa financiera lo contrata como analista de datos para desarrollar 
# un modelo que permita predecir el límite de crédito que se le otorgará a un cliente en 
# función de sus ingresos. Se le proporciona la base de datos LimiteCredito.xlsx , la 
# cual contiene las siguientes variables para una muestra de 400 clientes de la 
# empresa financiera:
#       ID: Identificador del cliente
#       Ingreso: Ingreso anual del cliente, expresado en dólares americanos
#       Limite: límite de crédito del cliente, expresado en dólares americanos

# Estudio Preliminar
par(mfrow=c(2,1))
hist(LimiteCredito$Ingreso, xlab = "Ingresos", main = "Limite de credito", col = "blue")
hist(LimiteCredito$Limite, xlab = "Limite", main = "Limite de credito", col = "red")
summary(LimiteCredito[-1])
cor(LimiteCredito[-1])


# Se pide:
# 1. Divida la base de datos en 75% training y 25% testing. Utilice la CI de alguno de los
# integrantes de su equipo como semilla aleatoria: set.seed(xxxxxxxxx). 

set.seed(10706137)
train = sample(nrow(LimiteCredito), nrow(LimiteCredito), 0.75)
test = (-train)

# 2. Ajuste el modelo de regresión lineal que relaciona el límite de crédito (variable de
# respuesta Y) en función de los ingresos anuales del cliente (variable predictora X). 
#       2.1  Reporte la ecuación de regresión lineal obtenida. 
#       2.2  Interprete el valor de la pendiente del modelo en el contexto del problema.

reg = lm(Limite~Ingreso, data = LimiteCredito, subset = train)
reg
summary(reg)

# 2.1 Respuesta: LimiteCredito = 2336 + 0.05215(Ingresos)
# 2.2 Respuesta: Representa el incremento en los Limite de Credito esperado a medida que 
# aumente los ingresos. Un ejemplo, si los ingresos de una persona aumente a $1000, su 
# limite de credito aumentaria a $52.15 (0.05215*1000)

# 3. Son significativos los coeficientes del modelo? Plantee las hipótesis nulas y 
# alternativas y el resultado de la prueba de hipótesis.

# Respuesta:
#             H0: 𝛽1 = 0
#             H1: 𝛽1 ≠ 0
# Dado que el valor-p de la prueba es menor de cualquier nivel de significacion ya sea del
# 5% o 1%  (valor-p = 2x10-16 < 0,05 o 0,01), rechazamos la hipotesis nula y aceptamos la
# hipotesis alternativa concluyendo que 𝛽1 ≠ 0, que nos señala que hay una relacion 
# lineal entre el limite de credito y los ingresos. A medida que los ingresos aumenten 
# el limite de credito tambien crecera


# 4. Grafique el modelo de regresión lineal junto con el diagrama de dispersión. Reporte 
# la gráfica

plot(LimiteCredito$Ingreso, LimiteCredito$Limite, main="Modelo de regresion lineal",xlab = "Ingresos", ylab = "Limite de credito", col = "red")
abline(lm(LimiteCredito$Limite~LimiteCredito$Ingreso), col="blue", lwd=2 )



# 5. Reporte el valor de R2 del modelo en la base de training. Interprete su valor

# Respuesta: R2 = 0.6348. El 63.48% de la variabilidad en el limite de creditos se 
# explica por los ingresos de los clientes, en la muestra de entramiento (training). El 
# modelo de regresion explica el 63.48% de la variabilidad del limite de creditos


# 6. Reporte el valor del error promedio que comete el modelo en las predicciones del 
# límite de crédito en la base de training (RCME en train)

LimiteCredito$Lim_pred <- predict(reg, newdata = LimiteCredito)

Ingreso <- c(30000,50000,70000)
datos_nuevos=data.frame(Ingreso)
predict(reg, datos_nuevos)

RCME.TRAIN = sqrt( mean((LimiteCredito$Limite[train]-LimiteCredito$Lim_pred[train])^2) )
RCME.TRAIN

# Respuesta: RCME en train = $1.463,80

# 7. Reporte el valor del error promedio que comete el modelo en las predicciones del 
# límite de crédito en la base de testing (RCME en test). 

RCME.TEST = sqrt( mean((LimiteCredito$Limite[test]-LimiteCredito$Lim_pred[test])^2) )
RCME.TEST

# Respuesta: RCME en test = $1.398,048

# 8. Comente acerca de la presencia o no de sobreajuste (overfitting) en el modelo.

# Los errores son similares, dado a que el RCME de test es ligeramente menor que el 
# del RCME de train, esto indica que no hay un sobreajuste


# 9. Utilice el modelo para predecir el límite de crédito para un cliente que tiene 
# ingresos anuales de 25000 dólares.

2336 + 0.05215*(25000)

# Respuesta: Si un cliente tiene un ingresos anuales de 25000, su limite de credito sera 
# de $3.639,75.  







