extends TextureButton


func _on_button_down() -> void:
	if Global.contador_police_station == 1:
		pass
	if Global.contador_police_station == 2:
		pass

func _on_mouse_entered() -> void:
	Input.set_custom_mouse_cursor(Global.lupa)
	$Label.show()


func _on_mouse_exited() -> void:
	Input.set_custom_mouse_cursor(Global.punta)
	$Label.hide()
