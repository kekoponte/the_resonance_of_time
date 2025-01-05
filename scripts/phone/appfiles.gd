extends Node2D


func _on_botón_de_files_button_up() -> void:
	Global.notificacion_files = 0
	get_parent().get_node("Botones/notif_back").hide()
	AddNotesToThings.add_files_to_list()
	self.z_index = 1
	self.visible = true
