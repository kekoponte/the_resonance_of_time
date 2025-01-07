extends TextureButton

func _on_button_down() -> void:
	if Global.termino_de_busqueda == "Claicorp":
		get_parent().get_node("resultados").show()
	else:
		get_parent().get_node("resultados").show()
		Dialogic.start("resultados_internet")
