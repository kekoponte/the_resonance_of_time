extends Control


func _on_mouse_entered() -> void:
	Input.set_custom_mouse_cursor(Global.mano)

func _on_mouse_exited() -> void:
	Input.set_custom_mouse_cursor(Global.punta)
