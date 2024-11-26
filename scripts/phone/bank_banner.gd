extends TextureButton



func _on_button_down() -> void:
	Dialogic.start("banner_bank") # Replace with function body.


func _on_mouse_entered() -> void:
	Input.set_custom_mouse_cursor(Global.mano)
