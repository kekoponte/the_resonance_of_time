extends TextureButton

func _pressed():
	get_parent().get_parent().get_parent().visible = false
	get_parent().get_parent().get_node("Autopsia").hide()
	get_parent().get_parent().get_node("listado_de_files").show()
func _on_mouse_entered() -> void:
	Input.set_custom_mouse_cursor(Global.mano,Input.CURSOR_ARROW,Vector2(11,0))


func _on_pressed() -> void:
	pass # Replace with function body.
