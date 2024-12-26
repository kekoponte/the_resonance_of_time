extends Control

func _on_mouse_entered() -> void:
	Input.set_custom_mouse_cursor(Global.mano,Input.CURSOR_ARROW,Vector2(11,0))


func _on_mouse_exited() -> void:
	Input.set_custom_mouse_cursor(Global.punta)


func _on_listado_de_files_meta_clicked(meta: Variant) -> void:
	if meta == "About":
		$About.show()
		$About.z_index = 1
	if meta == "Autopsy Report":
		$Autopsia.show()
		$Autopsia.z_index = 1


func _on_back_button_button_up() -> void:
		$Autopsia.hide()
		$Autopsia.z_index = -1
