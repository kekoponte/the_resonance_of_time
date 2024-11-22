extends TextureButton


func _on_button_down() -> void:
	if Global.contador_police_station == 1:
		SceneSwitcher.switch_scene("")
	if Global.contador_police_station == 2:
		Dialogic.start("")

func _on_mouse_entered() -> void:
	Input.set_custom_mouse_cursor(Global.door)
	$Label.show()


func _on_mouse_exited() -> void:
	Input.set_custom_mouse_cursor(Global.punta)
	$Label.hide()
