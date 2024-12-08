extends TextureButton


func _on_mouse_entered() -> void:
	Input.set_custom_mouse_cursor(Global.lupa)
	
func _on_mouse_exited() -> void:
	Input.set_custom_mouse_cursor(Global.punta)

func _on_button_down() -> void:
	Dialogic.start("06_matricula")
	$Plate_but.show()
	get_parent().get_node("interior").hide()
	get_parent().get_node("to_office").hide()
	Global.contador_parla_matricula = 2
