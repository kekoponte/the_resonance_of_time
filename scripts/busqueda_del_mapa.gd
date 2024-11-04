extends LineEdit

var Destination = ""

func _ready() -> void:
	grab_focus()
	set_process_input(true)
	set_process_unhandled_key_input(true)

func _on_text_submitted(Destination) -> void:
	Destination = Destination.capitalize()
	print(Destination)
	if Destination == "Home":
		Global.Direccion = Vector2(135,0)
	elif Destination == "Police Station":
		Global.Direccion = Vector2(190,90)
	elif Destination == "Work":
		Global.Direccion = Vector2(-190,10)
	else:
		print("No conozco ese sitio")
