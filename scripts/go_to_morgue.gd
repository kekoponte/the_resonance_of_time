extends TextureButton


func _on_button_down() -> void:
	if Global.contador_waiting_room == 1:
		Global.contador_morgue_2 = 1
		SceneSwitcher.switch_scene("res://scenes/room_03_hospital_morgue.tscn")
	if Global.contador_waiting_room == 2:
		Dialogic.start("02_Wait_Room_03")

func _on_mouse_entered() -> void:
	Input.set_custom_mouse_cursor(Global.door)
	$Label.show()


func _on_mouse_exited() -> void:
	Input.set_custom_mouse_cursor(Global.punta)
	$Label.hide()
