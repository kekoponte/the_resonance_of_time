extends Sprite2D



func _on_control_mouse_entered() -> void:
	Input.set_custom_mouse_cursor(Global.mano)


func _on_control_mouse_exited() -> void:
	Input.set_custom_mouse_cursor(Global.punta)


func _on_botón_de_files_button_down() -> void:
	pass # Replace with function body.
