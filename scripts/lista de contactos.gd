extends VBoxContainer

# Dibuja la lista de contactos del Array guardado en Global.gd

func _ready() -> void:
	for i in Global.Contactos:
		var debug = Button.new()
		var link = "res://scenes/phonecalls/" + Global.Contactos[i]
		debug.text = i
		debug.name = i
		debug.pressed.connect(_button_pressed.bind(link)) # Añade a cada botón la función que abre el link guardado en el Array
		add_child(debug)
		debug.alignment = HORIZONTAL_ALIGNMENT_LEFT
		
func _button_pressed(arg):
	get_tree().change_scene_to_file(arg)
	
