# PRACTICA 4

# Pregunta 1
# Una plataforma de intercambio de BITCOIN quiere estimar el tiempo promedio 
# que tardan sus usuarios en completar una transacción. Se estima que el desvío 
# estándar de los tiempos de transacción es de 2.5 minutos. Con un nivel de 
# confianza del 99% y un margen de error máximo de 40 segundos, ¿cuál sería el 
# tamaño de muestra necesario para realizar esta estimación?
  
sample.size.mean( 0.6666666667,2.5, N = Inf, level = 0.99)
 
# RESPUESTA: se necesita un tamaño de muestra de n = 94 transacciones para  
# realizar la estimacion para que el nivel de confianza sea del 99% y el  
# error maximo de 40 segundos

# Pregunta 2
# La misma plataforma de intercambio de BITCOIN del ejercicio anterior desea 
# estimar ahora el saldo promedio de las cuentas de sus usuarios para mejorar 
# su planificación financiera. Si la desviación estándar del saldo de las 
# cuentas es de $100, ¿cuál sería el tamaño de muestra necesario para estimar 
# el saldo promedio con un nivel de confianza del 90% y un margen de error
# máximo de $20?

sample.size.mean(20,100, N = Inf, level = 0.90)

# RESPUESTA: Para estimar el saldo promedio de las cuentas de sus usuarios se 
# necesita una muestra de n = 68 cuentas para que el nivel de confianza sea 
# del 90% y un error maximo de $100

# Pregunta 3
# Usted va a llevar a cabo un sondeo para estimar el ingreso promedio familiar 
# mensual en una localidad del Departamento de Tarija . Se sabe que en total 
# hay 754 familias en el área de estudio. Una muestra piloto de 8 familias 
# resultó en los siguiente ingresos familiares (Bs) mensuales: 1400, 1800, 870, 
# 720, 1100, 2400, 450, 550, 1050. El patrocinador del estudio desea que usted 
# utilice un nivel de confianza de 97%. La estimación debe estar dentro de un 
# margen de error de 100 Bs. La pregunta es: ¿a cuántas familias se debe 
# incluir en el estudio?
  
ingresos <-sd (c(1400, 1800, 870, 720, 1100, 2400, 450, 550, 1050))
sample.size.mean(100, ingresos , N = 754, level = 0.97 )

# RESPUESTA: Se necesita una muestra n = 150 familias para incluir dentro del
# estudio para estimar el ingreso promedio familiar mensual en el departamento 
# de Tarija y para que el nivel de confianza sea del 97% y el margen de 
# error de 100 Bs.

# Pregunta 4
# Una universidad está realizando un estudio sobre el conocimiento de la 
# tecnología “Blockchain” entre estudiantes universitarios. Quieren estimar la 
# proporción de estudiantes que tienen conocimientos básicos sobre Blockchain. 
# Deciden seleccionar una muestra aleatoria de estudiantes y realizar una 
# encuesta. Se sabe que en la Universidad hay un total de 1300 alumnos. Si 
# desean estimar esta proporción con un nivel de confianza del 99% y un margen 
# de error del 4%, ¿cuál sería el tamaño de muestra necesario?

sample.size.prop(0.04, P = 0.50, N = 1300, level = 0.99)

# RESPUESTA: Se necesita un tamaño de muestra necesario de n = 577 estudiantes
# universitarios para estimar la proporción de estudiantes con conocimientos 
# básicos sobre Blockchain para que el nivel de confianza sea del 99% y el 
# margen de error del 4%

# Pregunta 5
# Una empresa de análisis de mercado quiere estimar la proporción de clientes 
# que prefieren un método de pago online en comparación con aquellos que 
# prefieren pagar en efectivo. Deciden realizar una encuesta en línea a una 
# muestra de clientes. Si desean estimar esta proporción con un nivel de 
# confianza del 95% y un margen de error del 3%, ¿cuál sería el tamaño de 
# muestra necesario? En un estudio previo realizado en 2022 se determinó que de
# 800 clientes entrevistados, 390 preferían el método de pago online

sample.size.prop(0.03, P = 0.5, N = Inf, level = 0.95)

# Respuesta: Se necesita un tamaño de muestra necesario de n = 1068 personas 
# para estimar la proporcion de clientes que prefieren el método el pago online
# tenga nivel de confianza del 95% y un margen de error del 3%.
