extends Area2D

var direccion : Vector2
var speed := 1000

func _process(delta):
#	global_position = global_position + (-global_position + direccion ).normalized() * speed # Se corrige con lo siguiente
	global_position += speed * direccion * delta

func _on_body_entered(body):
	if body.is_in_group("Enemigos"):
		body.morir()
		queue_free()

func _on_kill_timer_timeout():
	queue_free()
