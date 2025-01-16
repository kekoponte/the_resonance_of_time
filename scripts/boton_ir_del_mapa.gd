extends TextureButton

#busqueda_del_mapa.gd tiene el listado de direcciones y sus nombres de búsqueda

func _on_button_down() -> void:

	if Global.Direccion == Vector2(150,100) and Global.Location == "La Paz Hospital":
		Dialogic.start("imhere")

	elif Global.contador_morgue_2 == "Primera vez":
		Dialogic.start("02_Hospital_morguefirst")

	elif Global.Direccion == Vector2(190,90) and Global.contador_morgue_2 == "Despues de identificar a Marcos" and Global.Location != "Police Station":
		$transicion_entre_escenas.play("transicion")
		PassTime.pass_time(185)
		await $transicion_entre_escenas.animation_finished
		SceneSwitcher.switch_scene("res://scenes/room_04_police_station.tscn")
	elif Global.Direccion == Vector2(250,340) and Global.activar_parla == 1:
		$transicion_entre_escenas.play("transicion")
		PassTime.pass_time(185)
		await $transicion_entre_escenas.animation_finished
		SceneSwitcher.switch_scene("res://scenes/room_06_parla.tscn")
	elif Global.Direccion == Vector2(150,100) and Global.Location != "La Paz Hospital" and Global.Hora < 20:
		$transicion_entre_escenas.play("transicion")
		PassTime.pass_time(185)
		await $transicion_entre_escenas.animation_finished
		SceneSwitcher.switch_scene("res://scenes/room_02_hospital_waiting_room.tscn")

	elif Global.Direccion == Vector2(150,100) and Global.Location != "La Paz Hospital" and Global.Hora > 20:
		Dialogic.start("hora")

	elif Global.Direccion == Vector2(100,300) and Global.activar_traffic == true:
		$transicion_entre_escenas.play("transicion")
		PassTime.pass_time(185)
		await $transicion_entre_escenas.animation_finished
		SceneSwitcher.switch_scene("res://scenes/room_08_traffic_control.tscn")

	elif Global.Direccion == Vector2(135,0):
		$transicion_entre_escenas.play("transicion")
		PassTime.pass_time(185)
		await $transicion_entre_escenas.animation_finished
		SceneSwitcher.switch_scene("res://scenes/room_09_home.tscn")

	elif Global.Direccion == Vector2(200,200) and Global.Location != "Olavide Plaza":
		$transicion_entre_escenas.play("transicion")
		PassTime.pass_time(185)
		await $transicion_entre_escenas.animation_finished
		SceneSwitcher.switch_scene("res://scenes/room_10_plaza_olavide.tscn")
	
	elif Global.Direccion == Vector2(200,200) and Global.Location == "Olavide Plaza":
		Dialogic.start("imhere")
	
	else:
		Dialogic.start("mapa_no")


func _on_mouse_entered() -> void:
	Input.set_custom_mouse_cursor(Global.mano,Input.CURSOR_ARROW,Vector2(11,0))
