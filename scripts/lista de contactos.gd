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
	if Global.Contactos["Alan Ferris"] == 1:
		Global.Contactos["Alan Ferris"] -= 1
		Dialogic.start("comunicando")
		Global.Nombre_en_llamada = "Alan Ferris"
	if Global.Contactos["Clara Cole"] == 1:
		Global.Contactos["Clara Cole"] -= 1
		Dialogic.start("comunicando")
		Global.Nombre_en_llamada = "Clara Cole"

	if Global.Contactos["Colin Baskins"] == 1:
		Global.Contactos["Colin Baskins"] -= 1
		Dialogic.start("comunicando")
		Global.Nombre_en_llamada = "Colin Baskins"

	if Global.Contactos["Dennis Bridge"] == 1:
		Global.Contactos["Dennis Bridge"] -= 1
		Dialogic.start("comunicando")
		Global.Nombre_en_llamada = "Dennis Bridge"
