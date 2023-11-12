extends Node

var vidas : int
var demo_array : Array = [1, 2]

func _ready() -> void:
	if vidas > 5: # Fíjate como Godot indica la línea del error y nos dice que faltan ":" después de la condición.
		pass
	
	# Node es una palabra reservada, concretamente el nombre de la clase Node, al ejecutar el proyecto nos indicará que la variable Node tiene el mismo nombre que la clase global, saldra en amarillo, no en rojo, eso es porque es una advertencia, las advertencias nos advierten de que puede dar un error, pero no impiden ejecutar el juego, los errores se marcan en rojo y esos sí detienen la ejecución ¡DE TODOS MODOS NO HAGAS ESTO! Tal vez no de ahora, pero dará error tarde o temprano, bajo advertencia no hay engaño...
	var Node
	
	# Este error no sería tan fácil de detectar porque como tal, no es un error de sintaxis, pero sí es un error de lógica, para detectar esta clase de errores podemos usar el print para que la consola nos muestre el valor de la variable durante la ejecución y comprobar si es correcto.
	# vidas = -1
	# print(vidas)
	
	# var player = get_node("Player")
	# player.move()
	
	# Ya lo he mencionado anteriormente, pero les recuerdo una vez más: Los arrays siempre empiezan desde 0, por lo tanto, demo_array[0] devolvería 1, por lo tanto, demo_array[3] sería el 4º elemento y ese no existe, así que nos va a dar un error indicando esto mismo.
	# print(demo_array[1])
