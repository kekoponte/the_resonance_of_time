extends Node2D

func _on_botón_de_mapa_button_up() -> void:
	AddNotesToThings.add_place_to_todos()
	self.z_index = 1
	self.visible = true
