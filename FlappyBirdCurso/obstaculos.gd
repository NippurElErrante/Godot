extends Node2D

var speed := 150

func _ready():
	randomize()
	position.y = randf_range(112.0,486.0)

func _process(delta):
	position.x -= speed * delta
	if position.x <= -350:
		call_deferred("queue_free") # Esta manera es mas optima al liberar el nodo que la siguiente
#		call_deferred("queue_free",self) # Esta manera es mas optima al liberar el nodo que la siguiente
#		queue_free() # Para eliminar el objeto y liberar espacio

func _on_tuberia_body_entered(body):
	if body.is_in_group("Player"):
		body.morir()
		print("Jugador detectado")

func _on_tuberia_2_body_entered(body):
	if body.is_in_group("Player"):
		body.morir()
		print("Jugador detectado")

func _on_score_body_entered(body):
	if body.is_in_group("Player"):
		body.subirScore()
