extends Node

func add_fotos_to_app() -> void:
	if Global.contador_fotos == 0:
		for i in Global.listado_de_fotos:
			var fotos_individuales = TextureRect.new()
			var nodeTarget = get_tree().get_nodes_in_group("Filegroup")
			nodeTarget[0].add_child(fotos_individuales)
			fotos_individuales.texture = i
			Global.contador_fotos += 1
	if Global.contador_fotos > 0:
		pass
