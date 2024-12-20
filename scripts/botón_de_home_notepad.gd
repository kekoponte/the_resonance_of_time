extends TextureButton

func _pressed():
	get_parent().get_parent().get_parent().visible = false


func _on_mouse_entered() -> void:
	Input.set_custom_mouse_cursor(Global.mano,Input.CURSOR_ARROW,Vector2(11,0))
