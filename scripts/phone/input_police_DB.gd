extends LineEdit

#boton_ir_del_mapa.gd Detona la acción, este es el listado de direcciones

func _ready() -> void:
	set_process_input(true)
	set_process_unhandled_key_input(true)

func _on_text_submitted(Name) -> void:
	Global.Search_name = Name.capitalize()

func _on_texture_button_button_down() -> void:
	var Name = self.text
	_on_text_submitted(Name)
	
