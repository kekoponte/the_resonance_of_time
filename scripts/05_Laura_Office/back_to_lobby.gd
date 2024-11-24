extends TextureButton


func _on_button_down() -> void:
	if Global.contador_laura_office == 1:
		SceneSwitcher.switch_scene("res://scenes/room_04_police_station.tscn")
	if Global.contador_laura_office == 2:
		pass

func _on_mouse_entered() -> void:
	Input.set_custom_mouse_cursor(Global.door)
	$Label.show()


func _on_mouse_exited() -> void:
	Input.set_custom_mouse_cursor(Global.punta)
	$Label.hide()
