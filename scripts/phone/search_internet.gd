extends LineEdit

func _ready() -> void:
	set_process_input(true)
	set_process_unhandled_key_input(true)

func _on_text_submitted(termino) -> void:
	Global.termino_de_busqueda = termino.capitalize()

func _on_texture_button_button_down() -> void:
	var termino = self.text
	_on_text_submitted(termino)
