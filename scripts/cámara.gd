extends TextureButton

func _on_button_down() -> void:
	if Global.Location == "Morgue":
		Dialogic.start("foto_morgue")
		Global.listado_de_fotos.append(load("res://assets/locations/03_Morgue/clara_file.png"))
		_add_fotos_to_files(1)
		_add_fotos_to_files(2)
		_add_fotos_to_files(3)
		_add_fotos_to_files(4)

		
	else:
		Dialogic.start("no_foto")



func _add_fotos_to_files(number) -> void:
	for i in Global.listado_de_fotos:
		var fotos_individuales = TextureRect.new()
		var nodeTarget = get_tree().get_nodes_in_group("Filegroup")
		nodeTarget[0].add_child(fotos_individuales)
		fotos_individuales.texture = i
