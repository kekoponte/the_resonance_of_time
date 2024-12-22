extends TextureButton


func _on_button_down() -> void:
	if Global.contador_police_station == "Normal":
		SceneSwitcher.switch_scene("res://scenes/room_05_laura_office.tscn")
	if Global.contador_police_station == "Normal sin entrar al despacho":
		Dialogic.start("04_Police_Station_02")
	

func _on_mouse_entered() -> void:
	Input.set_custom_mouse_cursor(Global.door)
	$Label.show()


func _on_mouse_exited() -> void:
	Input.set_custom_mouse_cursor(Global.punta)
	$Label.hide()
