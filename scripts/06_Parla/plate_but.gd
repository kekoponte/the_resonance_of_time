extends TextureButton


func _on_button_down() -> void:
	self.hide()
	Global.contador_parla_matricula = 1
	get_parent().get_parent().get_node("interior").show()
	get_parent().get_node("to_office").show()
