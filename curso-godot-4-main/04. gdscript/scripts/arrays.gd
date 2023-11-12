extends Node

# Ejemplo de Array

var tipo_array : Array = [ # Los valores se ponen entre corchetes, y se separan por comas
	"Dato 1", # Valor tipo String
	2, # Valor tipo Int
	[ # También se puede poner un array dentro de otro array, esto es un array multidimensional.
		true,  # Valor tipo Bool
		3.2  # Valor tipo Float, el último valor no necesita coma
	]
]

''' Para acceder a un valor tendríamos que poner el nombre de la variable y entre corchetes el índice al que queremos acceder, por ejemplo tipo_array[0], que nos devolvería "Dato 1" (se empieza a contar desde el cero), en el caso de los arrays multidimensionales sería tipo_array[2][0], que nos devolvería true. '''

# Ejemplo de Diccionario

# Los valores van entre llaves, y van en pares, clave y valor separas por : y cada par se separa por ,
var tipo_diccionario : Dictionary = {
	"Nombre" : "Pedro",
	"Edad" : 25,
	
	# También se puede poner un diccionario o array como valor, esto son diccionarios multidimensionales.
	"Clave Dato 3" : {
		"Clave Dato 3.1": "Valor Dato 3.1",
	},
	"Clave Dato 4" : [
		1,
		2,
	]
}

''' Para acceder a un valor, tendríamos que poner el nombre de la variable, y entre corchetes la clave entre comillas, por ejemplo tipo_diccionario["Nombre"], que nos devolvería "Pedro", en el caso de los diccionarios multimensionales es igual también, tipo_diccionario["Clave Dato 3"]["Clave Dato 3.1"] nos devolvería "Valor Dato 3.1", o tipo_diccionario["Clave Dato 4"][0] nos devolvería 1. '''
