Algoritmo algoritmo_de_costos
	
	// definir variables.
	Definir  precio, descuento, iva, cantidad, peso Como Real
	
	// arreglo bidimensional
	Dimension destino[2,4]
	destino[1,1] = "New york"
	destino[1,2] = "Boston"
	destino[1,3] = "Atlantic City"
	destino[1,4] = "Filadelfia"
	destino[2,1] = "10"
	destino[2,2] = "15"
	destino[2,3] = "5"
	destino[2,4] = "12"
	
	
	// introducir datos.
	Escribir " introduzca precio "
	Leer precio 
	Escribir " ingrese descuento, si no  ingrese 0 "
	Leer  descuento
	Escribir " ingrese el iva "
	Leer iva
	Escribir  " ingrese la cantidad "
	Leer  cantidad
	Escribir  " ingresa peso del paquete"
	Leer peso
	Escribir "seleccione ciudad de destino"
	
	Para i = 1  Hasta 4 Con Paso 1 Hacer
		Escribir i 	destino[1,i]
	Fin Para
	Leer ciudad
	costo_ciudad = ConvertirANumero(destino[2,ciudad])
	precio_descuento = precio - (descuento /100  * precio)
	
	
	Escribir "precio con descuento $"  precio_descuento
	precio_iva = precio_descuento * ( iva /100 + 1)
	
	Si cantidad >= 2 Entonces
		desxmayor = 0.95 * precio_iva
	SiNo
		desxmayor = precio_iva
	Fin Si
	costo_envio = costo_ciudad + 2 * peso 
	costo_total = (desxmayor * cantidad) + costo_envio
	
	
	// mostrar al usuario todos los valores
	Escribir  "cantidad de productos " cantidad " uni"
	Escribir "total sin envio sin descuento $" (cantidad * precio)
	Escribir "Precio con iva unitario $" precio_iva
	Escribir "precio por mayor unitario $" desxmayor
	Escribir  "peso total del paquete "  peso   "kg"        
	Escribir  "costo de envio de la ciudad " destino[1,ciudad] " es $" destino[2,ciudad]
	Escribir  "valor total del envio $" costo_envio
	Escribir " el costo total es $" costo_total
	
	
FinAlgoritmo
