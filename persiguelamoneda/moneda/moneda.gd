extends Area2D


func recoger():
#	$AudioStreamPlayer.play()
	queue_free() # Es una opcion para eliminar la moneda


#func _ready():
#	area_entered.connect(_on_moneda_recogida)
#
#func _on_moneda_recogida(area):
#	print(area.name)
#	queue_free() # Es una opcion para eliminar la moneda
#	pass



# Esta funcion la crea automaticamente si lo conecto desde las senales
#func _on_area_entered(area):
#	pass # Replace with function body.
