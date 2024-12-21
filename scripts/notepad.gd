extends Node2D

func _on_botón_de_notas_button_up() -> void:
	AddNotesToThings.load_notes_in_global()
	self.z_index = 1
	self.visible = true
