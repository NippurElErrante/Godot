extends Node

var enemigosAMatar : int
@onready var label_enemigos = $CanvasLayer/HBoxContainer/LabelEnemigos

var EnemigoEscena = preload("res://Escenas/enemigo.tscn")

func _ready():
	enemigosAMatar = randi_range(1,5)
	label_enemigos.text = str(enemigosAMatar)
	$Timer.connect("timeout",crearEnemigo)

func crearEnemigo():
	var enemigoCreado = EnemigoEscena.instantiate()
	enemigoCreado.global_position = Vector2(randf_range(0,1936),randf_range(-521,969))
	enemigoCreado.connect("seMurio",bajarContador)
	add_child(enemigoCreado)

func bajarContador():
	enemigosAMatar -= 1
	label_enemigos.text = str(enemigosAMatar)
	if enemigosAMatar <= 0:
		get_tree().paused = true
		$VictoriaCanvasLayer.visible = true

func _on_button_reiniciar_pressed():
	get_tree().paused = false
	get_tree().reload_current_scene()
	$VictoriaCanvasLayer.visible = false

func _on_button_salir_pressed():
	get_tree().quit()
