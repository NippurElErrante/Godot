extends Node

var frutas = ["MANZANA1","PERA","MANZANAVERDE","PIÑA","MANZANAROJA"]

func _ready():
	get_node("OtroNodo").connect("presioneTecla",_on_otro_nodo_presione_tecla)
#	pass

## Declaracion de variables con parametros y tipo que NO es obligatorio
#func operarNumeros(numeroa : int, numerob : int) -> int:
func operarNumeros(numeroa : int, numerob : int):
	var numeroARegresar = true
#	var numeroARegresar
	var numVeces = 0
	while numeroARegresar:
		print("Hola")
		numVeces+=1
		if numVeces	>= 10:
			numeroARegresar = false
#	for fruta in frutas:
#		if "MANZANA" in fruta:
#			print(fruta)
#		print(fruta) # Imprimir el array completo
#	print(frutas.pick_random()) # valores random
#	if numeroa > numerob:
#		numeroARegresar = "Uno es mayor que 2"
#	elif numeroa < numerob:
#		numeroARegresar = "Uno es menor que 2"
#	else:
#		numeroARegresar = "Uno es igual que 2"
#	for i in numerob:
##		print("hola")
#		print(i)
	return numeroARegresar

# ---------------------------------

# las variables se pueden definir sin tipo
#var numero1 = 10
#var numero2 = 20

# O con tipo
#var numero1f : float = 10
#var numero2f : float = 20

# las variables tambien se pueden instanciar sin tipo
#var wriasevcaserf

# var suma = 2000

#var Falso = false
#var Verdadero = true

#func _ready():
#	wriasevcaserf = numero1f / numero2f
#	print(wriasevcaserf)
#	# Como se declaro pero no se definio el tipo
#	# se puede volver a utilizar con otro tipo
#	wriasevcaserf = "Hola Mundo"
#	print(wriasevcaserf)
#	# De esta form se utilizo la misma variable con dos tipos diferentes
#	#print(operarNumeros(10,20))


#"""
#func sumar() -> int:
#	var suma = numero1 + numero2
#	return suma
#	"""
#
#"""
#func _ready():
#	print(sumar())
#"""

#func _process(delta):
#	if Input.is_action_just_pressed("ui_accept"):
#		print("Hola Usando input")
#		print("ASFD")
#


func _on_otro_nodo_presione_tecla(identificador):
	print(identificador," Deja de presionar tecla")
#	pass # Replace with function body.
