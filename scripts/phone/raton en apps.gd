extends Control

func _on_mouse_entered() -> void:
	Input.set_custom_mouse_cursor(Global.mano,Input.CURSOR_ARROW,Vector2(11,0))


func _on_mouse_exited() -> void:
	Input.set_custom_mouse_cursor(Global.punta)
