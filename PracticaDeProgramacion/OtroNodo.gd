extends Node2D

@export_node_path("Node") var otroNodo

@onready var obtenerMetodo = get_node(otroNodo)

var identificador : String = "OGRO"
signal presioneTecla

func _ready():
	print(obtenerMetodo.operarNumeros(14,10))

func _process(delta):
	if Input.is_action_just_pressed("ui_accept"):
		emit_signal("presioneTecla",identificador)
