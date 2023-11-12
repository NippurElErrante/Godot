class_name Jugador
extends CharacterBody2D

var vida = 100:
	set(valor):
		vida = valor
		$CanvasLayer/HBoxContainer/HPProgressBar.value = vida
		if vida <= 0:
			morir()

var speed := 400
var Bala = preload("res://Escenas/bala.tscn") # Esto seria bueno que se cargue en un script global

var flagBool = false

func _input(event):
	# if event is Input.MOUSE_BUTTON_LEFT: # se cambia declarando en el proyecto en el mapa de entrada
#	if Input.is_action_pressed("disparar") and event is InputEventMouseMotion: # MouseMotion disparaba al moverse
	if Input.is_action_pressed("disparar") and event is InputEventMouseButton:
#		print(event)
		var bala = Bala.instantiate()
#		bala.direccion = event.position
		bala.direccion = (get_global_mouse_position() - global_position).normalized()
		bala.global_position = global_position
		get_parent().add_child(bala)
	# Muevo lo que hice en _input a _physics_process 
	# porque la funcion _input se usa solo cuando recibe un input
	# al pasarlo a _physics_process
#	var movVectorDerIzq = Input.get_axis("ui_left","ui_right")
#	var movVectorArrAb = Input.get_axis("ui_up","ui_down")
#	var movAmbas = Vector2(movVectorDerIzq,movVectorArrAb)
#
#	velocity = movAmbas * speed # velocity es una variable heredad del tipo vector
#	move_and_slide() # es una funcion heredada de CharacterBody2D y toma el valor de velocity que encuentre
#
#	print(velocity)

func _physics_process(delta):
	# Es parecido a process pero en este se calculan las fisicas del personaje y es mejor
	# para el movimiento
	velocity =  Input.get_vector("ui_left","ui_right","ui_up","ui_down").normalized() * speed
	move_and_slide() # es una funcion heredada de CharacterBody2D y toma el valor de velocity que encuentre
#	print(velocity)
	# ----- abajo las diferentes maneras de hacerlo
#	Los siguientes es lo mismo que get_axis, son alternativas por si get_axis cambia
#	var asdf = Input.get_action_strength("ui_left") # para detectar la tecla izquierda
#	var asdf = Input.is_action_pressed("ui_left") # siempre que se encuentre presionada la tecla
#	var asdf = Input.is_action_just_pressed("ui_left") # acciona en el momento de presionar una tecla
#	Tambien se puede abreviar get_axis poniendo en un vector todo junto
#	var movimiento = Vector2(Input.get_axis("ui_left","ui_right"),Input.get_axis("ui_up","ui_down"))
#	velocity = movimiento.normalized() * speed
	# -----
	# Usando get_axis
#	var movVectorDerIzq = Input.get_axis("ui_left","ui_right")
#	var movVectorArrAb = Input.get_axis("ui_up","ui_down")
	# var movAmbas = Vector2(movVectorDerIzq,movVectorArrAb)
	# movAmbas se normaliza porque al apretar ambas teclas que se traducen
	# en los vectores derizq y arrab va a ser mas grande al apretar las dos teclas juntas
#	var movAmbas = Vector2(movVectorDerIzq,movVectorArrAb).normalized()
	# .normalized() es del vector movAmbas y lo puede agregar al definirlo o al usarlo
	# ejemplo velocity = movAmbas.normalized() * speed
	# con normalized lo que se hace es poner con la misma magnitud los valores del vector
#	velocity = movAmbas * speed # velocity es una variable heredad del tipo vector
	# se puede resumir todo con get_vector
#	var movimiento = Input.get_vector("ui_left","ui_right","ui_up","ui_down")
#	velocity = movimiento.normalized() * speed
	# Incluso se puede declarar todo directamente sin declarar movimiento
#	velocity =  Input.get_vector("ui_left","ui_right","ui_up","ui_down").normalized() * speed
#	move_and_slide() # es una funcion heredada de CharacterBody2D y toma el valor de velocity que encuentre
#	print(velocity)


func _on_detectar_enemigo_body_entered(body):
	if body.is_in_group("Enemigos") and !flagBool:
		flagBool = true
		vida -= body.damage
		$DetectarEnemigo/CollisionShape2D.set_deferred("disabled",true)
		$DetectarEnemigo/InmunidadTimer.start()
		print(vida)

func morir():
	get_tree().reload_current_scene()

func _on_inmunidad_timer_timeout():
	flagBool = false
	$DetectarEnemigo/CollisionShape2D.set_deferred("disabled",false)
