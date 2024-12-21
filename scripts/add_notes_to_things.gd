extends Node

func add_place_to_todos() -> void:
	var listado = get_tree().get_nodes_in_group("sitios")
	listado[0].text = ""
	listado[0].text = "[b]Recent searches:[/b]"
	for i in Global.listado_de_sitios:
		listado[0].append_text("[p][url=" + i + "]" + i + "[/url][/p]")

func add_thing_to_todos() -> void:
	var listado = get_tree().get_nodes_in_group("things")
	listado[0].text = ""

	for i in Global.listado_de_things:
		listado[0].append_text("[ul] " + i + " [/ul]")


func add_entry_to_diary() -> void:
	var listado = get_tree().get_nodes_in_group("diario")
	listado[0].text = ""
	for i in Global.listado_de_diario:
		listado[0].append_text("[p]" + i + "[/p]")

func save_notes_in_global() -> void:
	var listado = get_tree().get_nodes_in_group("notas")
	Global.bloc_de_notas = listado[0].text

func load_notes_in_global() -> void:
	var listado = get_tree().get_nodes_in_group("notas")
	listado[0].text = Global.bloc_de_notas
