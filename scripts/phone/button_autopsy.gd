extends TextureButton


func _on_mouse_entered() -> void:
	Input.set_custom_mouse_cursor(Global.lupa)


func _on_mouse_exited() -> void:
	Input.set_custom_mouse_cursor(Global.punta)
