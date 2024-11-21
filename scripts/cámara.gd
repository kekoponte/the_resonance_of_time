extends TextureButton

func _on_button_down() -> void:
	if Global.Location == "Morgue" and Global.Clara_in_photos == 0 :
		Dialogic.start("foto_morgue")
		Global.listado_de_fotos.append(load("res://assets/locations/03_Morgue/clara_file.png"))
		Global.Clara_in_photos = 1
	elif Global.Location == "Morgue" and Global.Clara_in_photos == 1 :
		Dialogic.start("no_more_foto")
	else:
		Dialogic.start("no_foto")
