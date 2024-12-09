extends TextureButton


func _on_button_down() -> void:
	SceneSwitcher.switch_scene("res://scenes/room_06_parla.tscn")

func _on_mouse_entered() -> void:
	Input.set_custom_mouse_cursor(Global.door)
	$Label.show()

func _on_mouse_exited() -> void:
	Input.set_custom_mouse_cursor(Global.punta)
	$Label.hide()

func _on_dialogic_signal(argument:String):

	if argument == "phone_off":
		get_parent().get_node("Phone").hide()

	if argument == "phone_on":
		get_parent().get_node("Phone").show()

	if argument == "end":
		Global.contador_Parla_office = 2
		Dialogic.end_timeline()
		self.show()
