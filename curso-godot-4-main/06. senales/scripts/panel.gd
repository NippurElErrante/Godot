extends Control

func _process(_delta) -> void:
	$VBoxContainer/Label.text = "Tiempo: " + str(int($Timer.time_left))


# He creado esta función solo para que vean como puedo reutilizar código gracias a las funciones, simplemente pido un parámetro de tipo Color, al que hay que pasarle un color en formato hexadecimal, RGB o RGBA.
func cambiar_color(color : Color) -> void:
	$VBoxContainer/Label.set("theme_override_colors/font_color", Color("#ffffff"))
	$ColorRect.color = color
	$Timer.start()


func _on_button_rojo_pressed() -> void:
	# Y al momento de llamar la función le paso el parámetro de tipo color que quiera.
	cambiar_color(Color("#d32f2f"))


func _on_button_azul_pressed() -> void:
	cambiar_color(Color("#3949ab"))


# Esto es solo un ejemplo más, fíjense que hay un timer, el timer envía la señal timetout, el receptor es el nodo padre, de forma que cuando termine su cuenta atrás, se ejecuta este código ¿verdad que es práctico?
func _on_timer_timeout() -> void:
	$VBoxContainer/Label.set("theme_override_colors/font_color", Color("#000000"))
	$ColorRect.color = Color("#FFFFFF")
