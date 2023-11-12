extends Node

'''
OPERADORES BÁSICOS:
+ operador de suma
- operador de resta
/ operador de división
* operador de multiplicación

OPERADORES AVANZADOS:
** exponentes
% módulos
// divisiones enteras
'''

func _ready() -> void:
	# Suma: usamos el símbolo + para sumar dos o más valores
	var a = 5 # Declaramos una variable llamada a y le asignamos el valor 5
	var b = 3 # Declaramos otra variable llamada b y le asignamos el valor 3
	var c = a + b # Declaramos una variable llamada c y le asignamos el resultado de sumar a y b
	print(c) # Imprimimos el valor de c en la consola. Debería ser 8.
	
	a += 3 # Nos devolverá 8 igualmente, porque es la suma de 5 + 3.
	print(a)
