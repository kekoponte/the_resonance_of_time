extends TextureButton


func _on_mouse_entered() -> void:
	Input.set_custom_mouse_cursor(Global.door)
	$Label.show()


func _on_mouse_exited() -> void:
	Input.set_custom_mouse_cursor(Global.punta)
	$Label.hide()


func _on_button_down() -> void:
	SceneSwitcher.switch_scene("res://scenes/room_07_parla_office.tscn")
