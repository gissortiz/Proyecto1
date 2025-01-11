Algoritmo Proyecto1
	
	Definir precio_original, cupon_de_descuento, impuestos, cantidad, descuento_cantidad, peso, costo_envio, costo_final Como real
	Definir destino Como real
	Definir monto_descuento Como real 
	Definir monto_impuestos Como real	
	Definir nombres_productos Como Caracter
	Definir eleccion Como Entero
	Dimension nombre_del_producto[3] 
	
	Escribir "Selecciona el producto: Para zapatillas ingesa 1. Para sandalias ingresa 2. Para botas ingresa 3."
	
	nombre_del_producto[1] <- "Zapatillas"
	nombre_del_producto[2] <- "Sandalias"
	nombre_del_producto[3] <- "Botas"
	
	Leer eleccion
	
	Segun eleccion Hacer 
		1: 
			precio_original <- 100
		2: 
			precio_original <- 150
		3:	
			precio_original <- 200
		De Otro Modo:
			precio_original <- 0
	FinSegun
	
	
	Escribir "Ha escogido: ", nombre_del_producto[eleccion], ", El precio del producto es: $", precio_original
	
	
	Escribir "Ingrese cupon de descuento en % (si aplica)"
	Leer cupon_de_descuento
	
	descuento_cantidad <- 0
	
	monto_descuento <- precio_original * (cupon_de_descuento / 100)
	
	precio_con_cupon_de_descuento <- precio_original - monto_descuento
	
	Escribir "Ingrese impuestos en %"
	Leer impuestos
	
	monto_impuestos  <- precio_con_cupon_de_descuento * (impuestos / 100)
	precio_mas_impuestos <- monto_impuestos + precio_con_cupon_de_descuento
	
	Escribir "Ingrese cantidad"
	Leer cantidad
	
	Si cantidad >= 2 Entonces
		Escribir "Tiene un descuento por cantidad, ingrese descuento en %:"
		Leer descuento_cantidad
	SiNo
		Escribir "Sin descuento por cantidad"
	FinSi
	
	descuento_cantidad <- precio_mas_impuestos * (descuento_cantidad / 100)
	
	Escribir "Ingrese peso en kg"
	Leer peso
	
	Escribir "Seleccione destino de envio: Para Maipú ingrese 1. Para Vitacura ingrese 2. Para Ñuñoa ingrese 3"
	Leer destino
	
	Mientras destino < 1 o destino > 3 Hacer
		Escribir "Destino incorrecto. Tienes las siguientes opciones: 1. Maipú, 2. Vitacura, 3. Ñuñoa"
		Leer destino
	Fin Mientras
	
	costo_fijo <- 10
	costo_envio <- costo_fijo + (cantidad * peso)
	
	costo_final <- (cantidad * (precio_mas_impuestos - descuento_cantidad)) + costo_envio
	
	Escribir "DESGLOSE:"
	
	Escribir "Precio original: $", precio_original
	
	Si cupon_de_descuento > 0 Entonces
		Escribir "Tu cupon fue : $", monto_descuento 
		Escribir "Precio con cupon de descuento: $", precio_con_cupon_de_descuento
	FinSi
	
	Escribir "Precio mas impuestos: $", precio_mas_impuestos
	
	Si descuento_cantidad > 0 Entonces
    Escribir "Tu descuento de cantidad fue: $", descuento_cantidad 
		Escribir "Precio con descuento por cantidad: $", precio_mas_impuestos - descuento_cantidad
	FinSi
	
	Escribir "Costo de envio: $", costo_envio
	Escribir "Precio final: $", costo_final
	
	Escribir "---------------------------"
	
FinAlgoritmo
