extends Node

func _ready() -> void:
	# EJEMPLO 1 BUCLE FOR
	for i in range(1, 11): # Al reproducir la escena nos mostrará un conteo del 1 al 10, el último valor no se incluye.
		print(i) # En la primera vuelta de ciclo, i vale 1, en la segunda vale 2, y así sucesivamente.
		
		
	# EJEMPLO 2 BUCLE FOR
	var frutas = ["manzana", "naranja", "plátano", "fresa"]
	for fruta in frutas: # Esto recorrerá el array y mostrará los 4 valores.
		print("Me gusta comer " + fruta) # Uso el operador + para concatenar un string y la variable fruta del for.
		
		
	# EJEMPLO 1 BUCLE WHILE
	var i = 1
	while i <= 10:
		print(i)
		i = i + 1
		# En cada vuelta de ciclo, sumará 1 a la variable i hasta que llegue a 10 y no se cumpla la condición.
		
		
	# EJEMPLO 2 BUCLE WHILE
	var x = 1
	while x <= 10:
		print("Hola Mundo")
		break # Aunque es prácticamente la misma condición que el anterior ejemplo, solo mostrara 1 "Hola Mundo", ya que pusimos un break para salir del bucle.
