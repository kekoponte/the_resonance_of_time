extends VBoxContainer

# Dibuja la lista de contactos del Array guardado en Global.gd

func _ready() -> void:
	for i in Global.Contactos:
		var debug = Button.new()
		debug.text = i
		debug.name = i
		debug.pressed.connect(_button_pressed.bind(i)) # Añade a cada botón la dirección del link guardado en el Array
		add_child(debug)
		debug.alignment = HORIZONTAL_ALIGNMENT_LEFT

func _button_pressed(i):
	Global.Contactos[i] += 1
	get_parent().get_parent().get_node("Llamadas").show()
	get_parent().get_parent().get_node("Llamadas").z_index = 9
	if Global.Contactos["Abraham Vieito"] == 1:
		Global.Contactos["Abraham Vieito"] -= 1
		Dialogic.start("comunicando")
		Global.Nombre_en_llamada = "Adrián Rodríguez"
	if Global.Contactos["Adrián Rodríguez"] == 1:
		Global.Contactos["Adrián Rodríguez"] -= 1
		Dialogic.start("comunicando")
		Global.Nombre_en_llamada = "Adrián Rodríguez"

	if Global.Contactos["Ángela Lopez"] == 1:
		Global.Contactos["Ángela Lopez"] -= 1
		Dialogic.start("comunicando")
		Global.Nombre_en_llamada = "Ángela Lopez"

	if Global.Contactos["Antonio Ramiro"] == 1:
		Global.Contactos["Antonio Ramiro"] -= 1
		Dialogic.start("comunicando")
		Global.Nombre_en_llamada = "Antonio Ramiro"

	if Global.Contactos["Bea Rodríguez"] == 1:
		Global.Contactos["Bea Rodríguez"] -= 1
		Dialogic.start("comunicando")
		Global.Nombre_en_llamada = "Bea Rodríguez"

	if Global.Contactos["Colin Baskins"] == 1:
		Global.Contactos["Colin Baskins"] -= 1
		Dialogic.start("comunicando")
		Global.Nombre_en_llamada = "Colin Baskins"

	if Global.Contactos["David García"] == 1:
		Global.Contactos["David García"] -= 1
		Dialogic.start("comunicando")
		Global.Nombre_en_llamada = "David García"

	if Global.Contactos["Dennis Bridge"] == 1:
		Global.Contactos["Dennis Bridge"] -= 1
		Dialogic.start("comunicando")
		Global.Nombre_en_llamada = "Dennis Bridge"

	if Global.Contactos["Isabel Peña"] == 1:
		Global.Contactos["Isabel Peña"] -= 1
		Dialogic.start("comunicando")
		Global.Nombre_en_llamada = "Isabel Peña"

	if Global.Contactos["Patricia Mata"] == 1:
		Global.Contactos["Patricia Mata"] -= 1
		Dialogic.start("comunicando")
		Global.Nombre_en_llamada = "Patricia Mata"

	if Global.Contactos["Ramón Olivares"] == 1:
		Global.Contactos["Ramón Olivares"] -= 1
		Dialogic.start("comunicando")
		Global.Nombre_en_llamada = "Ramón Olivares"
		
	if Global.Contactos["Roi Villamarín"] == 1:
		Global.Contactos["Roi Villamarín"] -= 1
		Dialogic.start("comunicando")
		Global.Nombre_en_llamada = "Roi Villamarín"

	if Global.Contactos["Adrián Rodríguez"] == 1:
		Global.Contactos["Adrián Rodríguez"] -= 1
		Dialogic.start("comunicando")
		Global.Nombre_en_llamada = "Adrián Rodríguez"
	
	if Global.Contactos["Marcos de la Fuente"] == 1:
		Global.Contactos["Marcos de la Fuente"] -= 1
		Dialogic.start("comunicando")
		Global.Nombre_en_llamada = "Marcos de la Fuente"
	
	if Global.Contactos["Tito Calas"] == 1:
		Global.Contactos["Tito Calas"] -= 1
		Dialogic.start("comunicando")
		Global.Nombre_en_llamada = "Tito Calas"

	if Global.Contactos["Vanessa Perez"] == 1:
		Global.Contactos["Vanessa Perez"] -= 1
		Dialogic.start("comunicando")
		Global.Nombre_en_llamada = "Vanessa Perez"
	
	if Global.Contactos["Yago Dopazo"] == 1:
		Global.Contactos["Yago Dopazo"] -= 1
		Dialogic.start("comunicando")
		Global.Nombre_en_llamada = "Yago Dopazo"
