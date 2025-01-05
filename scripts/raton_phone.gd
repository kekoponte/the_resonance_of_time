extends Sprite2D

func _on_control_mouse_entered() -> void:
	Input.set_custom_mouse_cursor(Global.mano,Input.CURSOR_ARROW,Vector2(11,0))
	if Global.notificacion_files == 0:
		get_parent().get_node("Botones/notif_back").hide()
	elif Global.notificacion_files > 0:
		get_parent().get_node("Botones/notif_back").show()
		get_parent().get_node("Botones/notif_back/num_notif").text = str(Global.notificacion_files)

func _on_control_mouse_exited() -> void:
	Input.set_custom_mouse_cursor(Global.punta)
