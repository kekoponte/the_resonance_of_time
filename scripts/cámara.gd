extends TextureButton

func _on_button_down() -> void:
	if Global.Location == "Morgue" and Global.Clara_in_photos == 0 :
		Dialogic.start("foto_morgue")
		Global.listado_de_fotos.append(load("res://assets/locations/03_Morgue/clara_file.png"))
		_add_fotos_to_files()
		Global.Clara_in_photos = 1
	elif Global.Location == "Morgue" and Global.Clara_in_photos == 1 :
		Dialogic.start("no_more_foto")
	else:
		Dialogic.start("no_foto")



func _add_fotos_to_files() -> void:
	for i in Global.listado_de_fotos:
		var fotos_individuales = TextureRect.new()
		var nodeTarget = get_tree().get_nodes_in_group("Filegroup")
		nodeTarget[0].add_child(fotos_individuales)
		fotos_individuales.texture = i
