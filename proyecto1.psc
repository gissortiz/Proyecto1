Algoritmo Proyecto1
	
	definir precio_original, cupon_de_descuento, impuestos, cantidad, descuento_cantidad, peso, costo_envio, costo_final Como real
	definir destino Como Caracter
	Definir monto_descuento Como real 
	Definir monto_impuestos como real	
	definir nombres_productos Como Caracter
	definir eleccion Como Entero
	Dimension nombre_del_producto[3]
	
	Escribir "Ingrese nombre del producto"
	Escribir " Zapatillas ingesa 1, ", "Sandalias ingresa 2, ", "Botas ingresa 3. "
	
	nombre_del_producto[1] <- "Zapatillas"
	nombre_del_producto[2] <- "Sandalias"
	nombre_del_producto[3] <- "botas"
	
	leer eleccion
	
	segun eleccion hacer
		
		1: 
			precio_original <- 100
		2: 
			precio_original <- 150
		3:	
			precio_original <- 200
			
		De Otro Modo:
			precio_original <- 0
	FinSegun
	
	
	Escribir "Ha escogido: ", nombre_del_producto[eleccion], ", El precio del producto es: ", precio_original
	
	
	escribir "ingrese precio del producto"
	leer precio_original
	
	escribir "ingrese cupon de descuento (si aplica)"
	leer cupon_de_descuento
	
	descuento_cantidad <- 0
	
	monto_descuento <- precio_original * (cupon_de_descuento / 100)
	
	resultado_temporal <- precio_original - monto_descuento
	
	escribir "ingrese impuestos"
	leer impuestos
	
	monto_impuestos  <- resultado_temporal * (impuestos / 100)
	resultado_impuestos <- monto_impuestos + resultado_temporal
	
	escribir "ingrese cantidad"
	leer cantidad
	
	si cantidad >= 2 Entonces
		Escribir "tiene un descuento por cantidad, ingrese descuento: "
		leer descuento_cantidad
	SiNo
		Escribir "Sin descuento por cantidad"
		
	FinSi
	
	
	descuento_cantidad <- resultado_impuestos * (descuento_cantidad / 100)
	
	Escribir "Ingrese peso en kg"
	leer peso
	
	Escribir "Ingrese destino de envio"
	Leer destino
	
	
	costo_fijo <- 10
	costo_envio <- costo_fijo + (cantidad * peso)
	
	costo_final <- (cantidad * (resultado_impuestos - descuento_cantidad)) + costo_envio
	
	Escribir "Desglose: "
	Escribir "Precio original: ", precio_original
	Escribir "Precio con cupon de descuento: ", resultado_temporal
	Escribir "Precio mas impuestos: ", resultado_impuestos
	Escribir "Descuento por cantidad: ", descuento_cantidad
	Escribir "Costo de envio: ", costo_envio
	Escribir "Precio final: ", costo_final
	
	
	
	
FinAlgoritmo
