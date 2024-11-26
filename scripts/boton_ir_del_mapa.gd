extends TextureButton


func _on_button_down() -> void:
	if Global.Direccion == Vector2(190,90):
		$transicion_entre_escenas.play("transicion")
		PassTime.pass_time(185)
		await $transicion_entre_escenas.animation_finished
		SceneSwitcher.switch_scene("res://scenes/room_04_police_station.tscn")
	if Global.Direccion == Vector2(250,340):
		$transicion_entre_escenas.play("transicion")
		PassTime.pass_time(185)
		await $transicion_entre_escenas.animation_finished
		SceneSwitcher.switch_scene("res://scenes/room_06_parla.tscn")
