extends LineEdit

#boton_ir_del_mapa.gd Detona la acción, este es el listado de direcciones

func _ready() -> void:
	grab_focus()
	set_process_input(true)
	set_process_unhandled_key_input(true)

func _on_text_submitted(Destination) -> void:
	Destination = Destination.capitalize()
	print(Destination)
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
	elif Destination == "Traffic Control" or "Traffic Department" or "Traffic" or "Trafic":
		Global.Direccion = Vector2(100,300)
	else:
		Global.Direccion = Vector2(randf_range(50, 400), randf_range(50, 400))
