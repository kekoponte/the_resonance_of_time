extends VBoxContainer

# Dibuja la lista de contactos del Array guardado en Global.gd

func _ready() -> void:
	for i in Global.Contactos_Mensajes:
		var debug = Button.new()
		debug.text = i
		debug.name = i
		debug.pressed.connect(_button_pressed.bind(i)) # Añade a cada botón la dirección del link guardado en el Array
		add_child(debug)
		debug.alignment = HORIZONTAL_ALIGNMENT_LEFT
		
func _button_pressed(i):
	Global.Contactos_Mensajes[i] += 1
	get_parent().get_parent().get_node("Conversacion").show()
	get_parent().get_parent().get_node("Conversacion").z_index = 9
	if Global.Contactos_Mensajes["Name 1"] == 1:
		Global.Contactos_Mensajes["Name 1"] -= 1
		Dialogic.start("alan")
		Global.Nombre_en_mensajes = "Name 1"
	if Global.Contactos_Mensajes["Name 2"] == 1:
		Global.Contactos_Mensajes["Name 2"] -= 1
		Dialogic.start("comunicando")
		Global.Nombre_en_llamada = "Name 2"

	if Global.Contactos_Mensajes["Name 3"] == 1:
		Global.Contactos_Mensajes["Name 3"] -= 1
		Dialogic.start("comunicando")
		Global.Nombre_en_llamada = "Name 3"

	if Global.Contactos_Mensajes["Name 4"] == 1:
		Global.Contactos_Mensajes["Name 4"] -= 1
		Dialogic.start("comunicando")
		Global.Nombre_en_llamada = "Name 4"
