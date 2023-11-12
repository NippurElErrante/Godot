extends CharacterBody3D

var enemy = get_tree().get_nodes_in_group("Enemy") # Necesitamos una referencia al enemigo, así que lo busco por el nombre del grupo, es solo un ejemplo.
var life = 10

func _ready():
	enemy.hit.connect(take_damage) # Ahora, cuando la señal se emita, la recibirá el player y ejecutara la función take_damage.

# Acostúmbrense a escribir código en inglés ¿eh? take damage es "recibir daños", se escribe en inglés por convención, ya que los lenguajes de programación no suelen aceptar caracteres especiales como la ñ o los acentos, así que en cualquier trabajo al que vayan, van a pedirle que escriban todos los nombres de variables y funciones en inglés.
func take_damage() -> void:
	life -= 1
