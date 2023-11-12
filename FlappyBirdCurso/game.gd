extends Node

var Obstaculo = preload("res://obstaculos.tscn")

func _on_crea_obstaculos_timer_timeout():
	var obstaculo = Obstaculo.instantiate()
	obstaculo.position.x = 270
	add_child(obstaculo)
