extends Control


var dialogue_node = null


func _ready():
	hide()


func show_dialogue(player, dialogue):
	show()
	$Button.grab_focus()
	dialogue_node = dialogue
	for c in dialogue.get_signal_connection_list("dialogue_finished"):
		if self == c.target:
			dialogue_node.start_dialogue()
			break
			return
	dialogue_node.connect("dialogue_started", Callable(player, "set_active").bind(false))
	dialogue_node.connect("dialogue_finished", Callable(player, "set_active").bind(true))
	dialogue_node.connect("dialogue_finished", Callable(self, "hide"))
	dialogue_node.connect("dialogue_finished", Callable(self, "_on_dialogue_finished").bind(player))
	dialogue_node.start_dialogue()
	$Name.text = dialogue_node.dialogue_name
	$Text.text = dialogue_node.dialogue_text


func _on_Button_button_up():
	dialogue_node.next_dialogue()
	$Name.text = dialogue_node.dialogue_name
	$Text.text = dialogue_node.dialogue_text


func _on_dialogue_finished(player):
	dialogue_node.disconnect("dialogue_started", Callable(player, "set_active"))
	dialogue_node.disconnect("dialogue_finished", Callable(player, "set_active"))
	dialogue_node.disconnect("dialogue_finished", Callable(self, "hide"))
	dialogue_node.disconnect("dialogue_finished", Callable(self, "_on_dialogue_finished"))
