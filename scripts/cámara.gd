extends TextureButton

func _on_button_down() -> void:
	if Global.Location == "Morgue":
		Dialogic.start("foto_morgue")
		Global.listado_de_fotos.append(preload("res://assets/locations/03_Morgue/clara_file.png"))
		_add_fotos_to_files()
	else:
		Dialogic.start("no_foto")



func _add_fotos_to_files() -> void:
	for i in Global.listado_de_fotos:
		var fotos_individuales = Sprite2D.new()
		var nodeTarget = get_tree().get_nodes_in_group("Filegroup")
		nodeTarget[0].add_child(fotos_individuales)
		fotos_individuales.scale = Vector2(0.5, 0.5)
		fotos_individuales.texture = i
		fotos_individuales.position = fotos_individuales.position + Vector2(50, 0)
