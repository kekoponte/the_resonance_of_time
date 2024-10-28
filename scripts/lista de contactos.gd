extends VBoxContainer

# Dibuja la lista de contactos del Array guardado en Global.gd

func _ready() -> void:
	for i in Global.Contactos:
		var debug = Button.new()
		var info_previa = Global.Contactos[i]
		debug.text = i
		debug.name = i
		debug.pressed.connect(_button_pressed.bind(i)) # Añade a cada botón la dirección del link guardado en el Array
		add_child(debug)
		debug.alignment = HORIZONTAL_ALIGNMENT_LEFT
		
func _button_pressed(i):
	Global.Contactos[i] += 1
	get_parent().get_parent().get_node("Llamadas").z_index = 2
	print(i)
	print(Global.Contactos[i])
