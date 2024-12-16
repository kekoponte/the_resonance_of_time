extends TextureButton

func _on_button_up() -> void:
	if Global.Location == "Morgue" and Global.Clara_in_photos == 0 :
		Dialogic.start("foto_morgue")
		Global.listado_de_fotos.insert(0, load("res://assets/locations/03_Morgue/clara_file.png"))
		Global.Clara_in_photos = 1
	elif Global.Location == "Morgue" and Global.Clara_in_photos == 1 :
		Dialogic.start("no_more_foto")
	elif Global.Location == "Parla Junkyard" and Global.contador_parla_matricula == 2 and Global.matricula_in_photos == 0:
		Dialogic.start("06_Parla_foto_matricula")
		Global.listado_de_fotos.insert(0, load("res://assets/locations/06_Parla/matricula_file.png"))
		Global.matricula_in_photos = 1
	elif Global.Location == "Parla Junkyard" and Global.contador_parla_matricula == 2 and Global.matricula_in_photos == 1 :
		Dialogic.start("06_no_more_Parla_foto_matricula")
	elif Global.Location == "Traffic Control" and Global.traffic_control_foto_furgoneta == 1:
		Global.listado_de_fotos.insert(0, load("res://assets/locations/08_Traffic_Control_Tower/van_file.png"))
		Dialogic.start("08_foto_van")
		Global.traffic_control_foto_furgoneta = 2

	else:
		Dialogic.start("no_foto")
