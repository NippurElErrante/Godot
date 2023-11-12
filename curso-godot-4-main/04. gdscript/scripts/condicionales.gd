extends Node

var personaje
var estado

'''
IMPORTANTE:
En GDScript el final de una línea lo definen los saltos de línea, y las tabulaciones son importantes para definir la estructura del código, así que presten atención al momento de tabular correctamente vuestro código, si no lo hacen correctamente, les marcará un error.

OPERADORES LÓGICOS:
== igual que...
=== exactamente igual que...
!= diferente que...
> mayor que...
>= mayor o igual que...
< menor que...
<= menor o igual que...
! y not son operadores de negación, por ejemplo "!tipo_bool" o "not tipo_bool" quiere decir que si la variable tipo_bool es igual a false entonces...
and y && son operadores de conjunción, por ejemplo "NOMBRE == "Cloud" and tipo_bool" quiere decir que si NOMBRE es igual a Manuel y tipo_bool es igual a true entonces...
or y || son operadores de disyunción, por ejemplo "NOMBRE == "Cloud" or NOMBRE == "Tifa" quiere decir que si NOMBRE es igual a Cloud o es igual a Tifa entonces...
'''

# Esto solo es código de ejemplo, no va a hacer nada, pero les servirá para ejemplificar el uso de los condicionales.

# Los condicionales deben ir dentro de una función, Godot tiene muchas funciones de forma nativa, pero eso lo veremos en futuros tutoriales, vamos paso por paso...
func _ready() -> void:
	# EJEMPLO 1
	if personaje.is_on_floor(): # Preguntamos si el personaje está tocando el suelo, esto devolverá true o false.
		personaje.saltar() # Si devuelve true llamará a la función saltar del personaje.
	
	# EJEMPLO 2
	if not personaje.is_on_floor() and estado == "En el aire":
		print("No hace nada")
	# elif es un "y si...", de esta forma si la primera condición no se cumple, pasa a la segunda, podemos poner tantos elif en un if como necesitemos.
	elif personaje.is_on_floor() and estado == "En el suelo":
		personaje.saltar()
	else: # Con else definimos que pasaría en caso de que no se cumpla ninguna condición, solo puede haber un else.
		print("Encuentros en la tercera dimensión")
	
	
	# Un if podría encadenar varias condiciones, un match solo puede evaluar 1, es más simple, pero por esta razón también evalúa más rápido las condiciones que un if.
	match estado:
		"inicio":
			mostrar_menu()
		"juego":
			actualizar_juego()
		"fin":
			mostrar_puntuacion()
		_: # En un match, el _ es el equivalente al else.
			print("No hace nada")


func mostrar_menu() -> void:
	pass


func actualizar_juego() -> void:
	pass


func mostrar_puntuacion() -> void:
	pass
