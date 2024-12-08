extends TextureButton


func _on_mouse_entered() -> void:
	Input.set_custom_mouse_cursor(Global.lupa)
	
func _on_mouse_exited() -> void:
	Input.set_custom_mouse_cursor(Global.punta)

func _on_button_down() -> void:
	$"06InteriorCar".show()
	Dialogic.start("06_interior")
	get_parent().get_node("matricula").hide()
	get_parent().get_node("to_office").hide()
