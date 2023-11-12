extends Node

'''
Te estabas preguntando por qué pongo void en las funciones ¿verdad? ¿eh? ¿Qué es void? Sencillo: NADA. Podemos indicar el valor de retorno en las funciones para ayudar a Godot a entender que retorna esa función y con void le estoy indicando que esa función no retorna NADA. :-P
'''

func _ready() -> void:
	get_node("Personaje").position = Vector3.ZERO
	var mi_puntaje = GLOBAL.score
