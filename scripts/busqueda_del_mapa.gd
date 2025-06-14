extends LineEdit

#boton_ir_del_mapa.gd Detona la acción, este es el listado de direcciones

func _ready() -> void:
	set_process_input(true)
	set_process_unhandled_key_input(true)

func _on_text_submitted(Destination) -> void:
	Destination = Destination.capitalize()
	if Destination == "Home":
		Global.Direccion = Vector2(135,0)
	elif Destination == "Police Station" or Destination == "Police":
		Global.Direccion = Vector2(190,90)
	elif Destination == "Work":
		Global.Direccion = Vector2(-190,10)
	elif Destination == "Parla":
		Global.Direccion = Vector2(250,340)
	elif Destination == "La Paz Hospital" or Destination == "La Paz" or Destination == "Hospital":
		Global.Direccion = Vector2(150,100)
	elif Destination == "Traffic Control" or Destination == "Traffic Department" or Destination == "Traffic" or Destination == "Trafic":
		Global.Direccion = Vector2(100,300)
	elif Destination == "Plaza De Olavide" or Destination == "Olavide" or Destination == "Plaza Olavide" or Destination == "Olavide Plaza":
		Global.Direccion = Vector2(100,200)
	else:
		Global.Direccion = Vector2(randf_range(50, 400), randf_range(50, 400))


func _on_texture_button_button_down() -> void:
	var Destination = self.text
	_on_text_submitted(Destination)


func _on_lugares_guardados_meta_clicked(meta: Variant) -> void:
	self.text = str(meta)
	var Destination = self.text
	_on_text_submitted(Destination)
