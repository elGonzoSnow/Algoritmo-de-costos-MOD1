![baner](https://github.com/elGonzoSnow/Algoritmo-de-costos-MOD1/assets/122803276/64241f91-f1ff-430c-ba66-cdf874a56a8c)


## Algoritmo de Costos corte-14

Este algoritmo, escrito en pseudocódigo, permite calcular el costo total de un envío de productos considerando el precio, descuento, IVA, cantidad, peso del paquete y el costo de envio a la ciudad de destino.  ahora explicaremos como funciona.
## Funcionamiento
Definición de variables:
- Se definen las variables necesarias para saber el precio total de el o los productos, tales como: 
Descuento, Descuento por mayor,  IVA , cantidad y peso del paquete.

- Arreglo bidimensional de destinos: Se crea un arreglo bidimensional para almacenar los nombres de las ciudades y sus respectivos costos de envío respectivamente asignados en Filas y Columnas.
````
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
 ````

- Ingreso de datos: Se solicita al usuario que ingrese el precio del producto, el descuento (si aplica), el valor del IVA, la cantidad de productos, el peso del paquete y la selección de la ciudad de destino.
- Cálculo del precio con descuento: Se calcula el precio con descuento, si se ha ingresado un valor de descuento.
- Cálculo del precio con IVA: Se calcula el precio del producto con el IVA incluido.
- Aplicación de descuento por cantidad: Si la cantidad de productos es mayor o igual a 2, se aplica un descuento adicional del 5% .
- Cálculo del costo de envío: Se calcula el costo de envío sumando el costo base de la ciudad, 10 ,  15 ,5 , 12 . Más $2 por cada paquete (peso).
- Cálculo del costo total: Se calcula el costo total sumando el costo de los productos con descuento y el costo de envío.
- Entrega de los resultados: Se muestran al usuario todos los valores calculados, incluyendo la cantidad de productos, el precio sin descuento, el precio con IVA, el precio por mayor, el peso del paquete, el costo de envío de la ciudad seleccionada y el costo total del envío.
## Uso.
- Ejecutar el algoritmo. (PSeint).
- Ingresar los datos solicitados: precio, descuento, IVA, cantidad, peso y seleccionar la ciudad de destino.
- El algoritmo calculará y mostrará el costo total del envío.
## Ejemplo.

``` 
introduzca precio: 20
 ingrese descuento, si no ingrese 0: 5
 ingrese el iva: 12
 ingrese la cantidad: 3
 ingresa peso del paquete: 2
Seleccione ciudad de destino:
1. New York
2. Boston
3. Atlantic City
4. Filadelfia
```
## Resultados.
```
cantidad de productos 3 uni
total sin envio sin descuento $60
Precio con iva unitario $22.4
precio por mayor unitario $21.28
peso total del paquete 2kg
costo de envio de la ciudad New York es $10
valor total del envio $14
el costo total es $75.84
```
## Conclusion 
Este algoritmo es una herramienta que comprende diferentes funciones de programacion vistas en el modulo uno en pseint. aca el resultado final del Pseudocodigo.
```
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
```
