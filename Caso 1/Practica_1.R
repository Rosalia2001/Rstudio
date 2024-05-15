#PRACTICO 1
#INTEGRANTES:
#Choque Fernandez Dania /CI:10706137 
#Martinez Alcoba Rosalia / CI:7112436
#Martinez Maygua Andrea / CI:12689018

#PREGUNTA 1
#Una encuesta realizada en mayo de 2023 a clientes de un banco del país incluyó la
#pregunta ¿En términos generales, cómo calificaría la calidad del servicio brindado por 
#el banco?. Las posibles respuestas son: Excelente, Bueno, Neutro, Malo y Terrible

#1.1 a)Tabla de frecuencias Absolutas

tabla_Rating <- table(Banco_calidad$Rating)

tabla_Rating

#1.1 b)Tabla de Freccuencias relativas

tabla_Relativa_Rating <- prop.table(tabla_Rating)

tabla_Relativa_Rating

# 1.1 Tabla de Frecuencias 

tabla_frecuencias <- cbind(tabla_Rating,tabla_Relativa_Rating)

tabla_frecuencias

#1.2 Elabore una gráfica de sectores (pie). 

pie(tabla_Rating,
    main="Calidad de Servicio",
    sub="Econometria 2024")

#1.3 Elabore un gráfico de Barras

barplot(tabla_Rating,
        col="cyan4",
        main="Gráfica de Barras: Calidad de Servicio",
        xlab="Rating",
        ylab="Frecuencia")

#1.4 Comentario acerca de como piensa los clientes

# Mas del 46% de los clientes que respondieron en la encuentas perciben el  
# servicio como nuetro, ni bueno y ni malo; mas de del 28% de clientes 
# encuestados calificaron la calidad del servicio como malo; si bien 
# el banco tiene una calificacion de la calidad del servicio como neutro,
# este deberia mejorar la calidad de sus servicios asi para atraer clientes y no perderlos


# Pregunta 2
#Considere una muestra con los datos: 10, 20, 12, 17 y 16.

#2.1 muestra <- c(10,20,12,17,16)
muestra

datos <- data.frame(muestra)
datos

#2.2 Calculando la media
mean(datos$muestra)

#2.3 Calculando la mediana
median(datos$muestra)

#2.4 Calculando el percetil 60
quantile(datos$muestra, 0.60)

#2.5 Calculando la desviacion estandar
sd(datos$muestra)

# PREGUNTA 3
#presenta datos de una importante cadena de tiendas con sucursales por todo Uruguay. 
#Los datos obtenidos son una muestra de 100 clientes durante un día.

#3.1.	Calcule el promedio de compras por cliente para cada método de pago
tabla_Pagos <- table(Clothing$MetodoPago)

tabla_Pagos

tabla_Relativa_Pagos <- prop.table(tabla_Pagos)

tabla_Relativa_Pagos

tabla_frecuencias <- cbind(tabla_Pagos,tabla_Relativa_Pagos)

tabla_frecuencias

tapply(Clothing$Compras, Clothing$MetodoPago, mean)

#La forma de pago que prefiere los clientes es mediante el MASTERCARD, tenia un promedio de 178.35 
#de mayor frecuencia, siendo mayor a otros medios de pago, esta información nos hace conocer que la mayoría 
#de las personas usan el método de pago de MASTERCARD.


#3.2 Calculando la desviacion estandar de compras para cada metodo de pago

tapply(Clothing$Compras, Clothing$MetodoPago, sd)

#El método de pago que tuvo mayor variabilidad es MASTERCARD con una desviación
#estándar de 91.58.

#3.3 Elaboracion de un diagram de Cajas
boxplot(Compras~MetodoPago,
        data=Clothing,
        main="Metodo de Pago por Compras",
        sub="Analitica de Datos 2024",
        col="gold",
        xlab="Compras",
        ylab="Metodos de Pagos")

#Según en el grafico de cajas nos da conocer que los clientes que compran cancelan sus pagos 
#mediante MasterCard teniendo un máximo de 340, mínimo de 80 y una media de 180 de los métodos 
#de pagos, a diferencia del contado y Oca siendo menores a su forma de pago, Visa llega a ser 
#el según lugar como forma de pago.


