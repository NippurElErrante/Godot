extends CharacterBody2D

var jugador : Jugador # Al declara como clase jugador, script player, puedo usarla como un tipo
var damage = 10
var speedEnemigo = 200

signal seMurio


func _ready():
	jugador = get_tree().get_first_node_in_group("MiJugador")

func _physics_process(delta):
	# print(jugador)
	if jugador != null:
		velocity = Vector2(jugador.global_position-global_position).normalized() * speedEnemigo
		move_and_slide()

func morir():
	emit_signal("seMurio")
	queue_free()
