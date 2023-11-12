extends Area3D

signal hit(value) # Podemos pasarle cuantos parámetros queramos separados por comas, en este caso solo pido uno.
# signal hit -> Esto también sería válido, podemos declarar una señal sin necesidad de pasarle parámetros

var damage : int # Hit se refiere a un golpe ¿de acuerdo? Por lo tanto, damage es la cantidad de daño, y value es “valor” ¡ESE INGLÉS!

func _on_body_entered(body):
	emit_signal("hit", damage) # Y aquí le indicamos que emita la señal hit y le pasamos el valor del parámetro.
