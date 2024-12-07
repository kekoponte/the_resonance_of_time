extends Node

func add_fotos_to_app() -> void:
	for i in Global.listado_de_fotos:
		var fotos_individuales = TextureRect.new()
		var nodeTarget = get_tree().get_nodes_in_group("Filegroup")
		if Global.listado_de_fotos.size() > Global.contador_fotos:
			nodeTarget[0].add_child(fotos_individuales)
			fotos_individuales.texture = i
			Global.contador_fotos += 1
		else:
			pass
