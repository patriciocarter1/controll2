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
fit <- lm (accion$a.falabella ~ accion$r.falabella + accion$r.ipsa + accion$a.ipsa)
summary (fit)

fit <- lm (accion$a.entel ~ accion$r.entel + accion$r.ipsa + accion$a.ipsa)
summary (fit)

fit <- lm (accion$a.salfacorp ~ accion$r.salcacorp + accion$r.ipsa + accion$a.ipsa)
summary (fit)


plot(accion$a.falabella,accion$a.ipsa)

plot(accion$a.entel,accion$a.ipsa)

plot(accion$a.salfacorp,accion$a.ipsa)



