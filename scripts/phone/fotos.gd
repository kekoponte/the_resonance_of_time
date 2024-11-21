extends Node2D

func _on_botón_de_files_button_up() -> void:
	AddFotosToApp.add_fotos_to_app()
	self.z_index = 1
	self.visible = true
