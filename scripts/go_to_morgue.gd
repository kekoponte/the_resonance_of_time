extends TextureButton


func _on_button_down() -> void:
	get_tree().change_scene_to_file("res://scenes/room_03_hospital_morgue.tscn")


func _on_mouse_entered() -> void:
	Input.set_custom_mouse_cursor(Global.door)
	$Label.show()


func _on_mouse_exited() -> void:
	Input.set_custom_mouse_cursor(Global.punta)
	$Label.hide()
