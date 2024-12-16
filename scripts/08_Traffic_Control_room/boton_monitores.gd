extends TextureButton


func _on_mouse_entered() -> void:
	Input.set_custom_mouse_cursor(Global.lupa)
	
func _on_mouse_exited() -> void:
	Input.set_custom_mouse_cursor(Global.punta)

func _on_button_down() -> void:
	$boton_cerrar.show()
	Global.traffic_control_foto_furgoneta = 1
	Dialogic.start("08_ver_furgoneta")
