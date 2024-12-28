extends RichTextLabel

func _on_meta_hover_started(_meta: Variant) -> void:
	Input.set_custom_mouse_cursor(Global.mano,Input.CURSOR_POINTING_HAND,Vector2(11,0))

func _on_mouse_entered() -> void:
	Input.set_custom_mouse_cursor(Global.mano,Input.CURSOR_ARROW,Vector2(11,0))


func _on_meta_clicked(_meta: Variant) -> void:
	self.hide()

func _on_back_button_button_up() -> void:
	self.show()
