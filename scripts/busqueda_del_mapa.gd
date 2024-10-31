extends LineEdit

var Destination = ""

func _ready() -> void:
	grab_focus()
	set_process_input(true)
	set_process_unhandled_key_input(true)



func _on_text_submitted(Destination) -> void:
	if Destination == "Home" or "home":
		Global.Direccion = Vector2(130,0)
	elif Destination == "Police Station" or "police station" or "Police station":
		Global.Direccion = Vector2(190,90)
	elif Destination == "Work" or "work":
		Global.Direccion = Vector2(-190,10)
	else:
		print("No conozco ese sitio")
