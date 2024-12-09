extends TextureButton


func _on_button_down() -> void:
	self.hide()
	get_parent().get_parent().get_node("matricula").show()
	get_parent().get_parent().get_node("to_office").show()
