extends TextureButton

func _on_button_down() -> void:
	Dialogic.start("04_Police_Station_03")


func _on_mouse_entered() -> void:
	Input.set_custom_mouse_cursor(Global.lupa)
	$Label.show()


func _on_mouse_exited() -> void:
	Input.set_custom_mouse_cursor(Global.punta)
	$Label.hide()
