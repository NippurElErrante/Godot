extends Node

# Variables de tipo GLOBAL

@export var tipo_export : String # Export estándar
@export_multiline var tipo_multiline : String # Texto multilínea
@export_range(-10, 10) var tipo_range : int # Rango numérico

# Tipos de variable
var tipo_bool : bool = true
var tipo_int : int = 3
var tipo_float : float = 4.99
var tipo_string : String = "Cloud" # El texto tiene que ir entre comillas dobles " o simples '


# Ejemplos de variables
var score : int = 0 # Crea una variable llamada score de tipo int con valor inicial 0
var player_name : String # Crea una variable llamada player_name de tipo String sin valor inicial


# Ejemplos de constantes
const PI = 3.14159 # Crea una constante llamada PI con valor 3.14159
const MAX_SPEED = 100 # Crea una constante llamada MAX_SPEED con valor 100


# Variables de tipo LOCAL

func test() -> void:
	var variable_local : String = "Tifa" # Esta variable solo es accesible dentro de la función test
