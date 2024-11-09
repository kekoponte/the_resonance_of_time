extends TextureButton

func _on_button_down() -> void:
	$clara_face.show()
	Dialogic.start("03_seeing_claras_face")


func _on_mouse_entered() -> void:
	Input.set_custom_mouse_cursor(Global.lupa)
	
func _on_mouse_exited() -> void:
	Input.set_custom_mouse_cursor(Global.punta)
