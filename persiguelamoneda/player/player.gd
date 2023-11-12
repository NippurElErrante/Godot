extends Area2D

@export var velocidad : int
var movimientoInput := Vector2()
#var ventanaTm = Vector2(480,720)
var ventanaTm = Vector2(450,720)

# Con onready instancio el nodo al usarlo
@onready var sprite : AnimatedSprite2D = $AnimatedSprite2D

# Agrego senales
signal recolectar
signal herirse

func _ready():
	area_entered.connect(_on_area_entered)

# Mas abajo comentada otra manera de hacerlo pero con mas codigo
func _process(delta):
	moverPersonaje(delta)
	if movimientoInput.length() > 0:
		sprite.animation = "run"
		if movimientoInput.x != 0:
			sprite.flip_h = movimientoInput.x < 0
	else:
		sprite.animation = "idle"

func moverPersonaje(delta):
	movimientoInput.x = Input.get_action_strength("ui_right") - Input.get_action_strength("ui_left")
	movimientoInput.y = Input.get_action_strength("ui_down") - Input.get_action_strength("ui_up")
	
	position += movimientoInput.normalized() * velocidad * delta
	
	position.x = clamp(position.x,0,ventanaTm.x) # clamp es una limitacion entre valores
	position.y = clamp(position.y,0,ventanaTm.y)

func inicio(pos):
	position = pos
	sprite.play("idle")
	set_process(true)

func morirse():
	sprite.play("hurt")
	set_process(false)

#func _process(delta):
#	obtenerInput()
#	position += movimientoInput * delta
#
#func obtenerInput():
#	movimientoInput = Vector2()
##	la siguiente es una manera de hacerlo por separado, en este caso a la izq
##	if Input.is_action_pressed("ui_left"):
##		movimientoInput.x -= 1
##	Godot brinda la siguiente funcion para hacerlo todo junto
#	movimientoInput.x = Input.get_action_strength("ui_right") - Input.get_action_strength("ui_left")
#	movimientoInput.y = Input.get_action_strength("ui_down") - Input.get_action_strength("ui_up")
#	movimientoInput = velocidad * movimientoInput.normalized() # Con normalized() se mueve de manera uniforme
#	print(movimientoInput)

# La crea al configurar la senal
func _on_area_entered(area):
	if area.is_in_group("monedas"):
		area.recoger()
		emit_signal("recolectar")
	if area.is_in_group("enemigos"):
		emit_signal("herirse")
		morirse()
