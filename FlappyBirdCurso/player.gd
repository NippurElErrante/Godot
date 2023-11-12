extends RigidBody2D

var speed := 400
var score := 0

# Otra forma de agregarlo, pero hay que tener cuidado porque fuerza la ruta y si cambia ya no sirve
#@onready var hit_audio_stream_player = $"../HitAudioStreamPlayer"
#@onready var point_audio_stream_player = $"../PointAudioStreamPlayer"
#@onready var flap_audio_stream_player = $"../FlapAudioStreamPlayer"


func _integrate_forces(state):
	if Input.is_action_just_pressed("ui_accept"):
		$"../FlapAudioStreamPlayer".play() # se puede agregar a la funcion, no es recomendado porque si se cambia no sirve mas
		linear_velocity = Vector2.ZERO
		apply_central_impulse(Vector2(0,-speed))
		$AnimatedSprite2D.play("flap")

func morir():
	$"../HitAudioStreamPlayer".play() # se puede agregar a la funcion, no es recomendado porque si se cambia no sirve mas
	get_tree().paused = true
	$"../Message".show()
	$"../Message/Gameover".show()
#	get_tree().reload_current_scene() # con esto se reinicia la escena

func subirScore():
	score+=1
	$"../PointAudioStreamPlayer".play() # se puede agregar a la funcion, no es recomendado porque si se cambia no sirve mas
	$"../ScoreLabel".text = str(score)

## scroll_base_offset no es del tipo RigiBody2D por lo que da error
## y para evitarlo lo declaro
#var scroll_base_offset = Vector2.ZERO
#
#func _process(delta):
#	scroll_base_offset.x -= 3


func _on_detecta_suelo_body_entered(body):
	if body.is_in_group("Obstaculo"):
		morir()
