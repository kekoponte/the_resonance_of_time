extends TextureButton


func _on_button_down() -> void:
	if Global.Direccion == Vector2(190,90):
		SceneSwitcher.switch_scene("res://scenes/room_04_police_station.tscn")
