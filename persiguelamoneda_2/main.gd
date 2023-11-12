extends Node

var numero1 := 90
var numero2 := 20
var escalaSprite := Vector2(100,1)

func _ready():
#	print(numero1-numero2)
#	$Sprite2D.rotation+=deg_to_rad(numero1)
	escalarSprite()

func escalarSprite():
#	$Sprite2D.scale += escalaSprite
	$Sprite2D.position += escalaSprite

func _process(delta):
#	$Sprite2D.position.x+= numero1
#	$Sprite2D.rotation+=deg_to_rad(numero1)
#	pass
	$MeshInstance3D.position.y += .01
