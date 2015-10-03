setwd("C:/Users/Patito/Desktop/unab-2015/")

data <- ("accion.csv")

x <- accion$r.falabella # x retornos de falabella
mean(x * 100) # con un promedio calculamos el proximo retorno x 100 para que quede en porcentaje
sd(x) # desviacion estandar de los retornos 

y <- accion$r.entel # y retornos de entel
mean( y * 100)# proximo retorno en porcentaje falabella
sd(y) # desviacion estandar retornos entel

z <- accion$r.salcacorp # retornos de salfacorp
mean (z*100) #proximo retorno porcentaje salfacorp
sd(z)

na <- data.frame(x, y, z)
cor(na) #correlacion entre variables 

# regresiones
fit <- lm (accion$r.falabella ~ accion$r.ipsa )
summary (fit)

fit <- lm (accion$r.entel ~ accion$r.ipsa )
summary (fit)

fit <- lm (accion$r.salcacorp ~ accion$r.ipsa )
summary (fit)


plot(accion$r.falabella,accion$r.ipsa)

plot(accion$r.entel,accion$r.ipsa)

plot(accion$r.salcacorp,accion$r.ipsa)



