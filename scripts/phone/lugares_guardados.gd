extends RichTextLabel


func _on_meta_hover_started(meta: Variant) -> void:
	Input.set_custom_mouse_cursor(Global.mano,Input.CURSOR_POINTING_HAND,Vector2(11,0))


func _on_text_edit_focus_entered() -> void:
	self.visible = true
