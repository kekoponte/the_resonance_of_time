extends TextureButton

func _on_button_down() -> void:
	if Global.contador_Parla_office == 1:
		self.hide()
		Dialogic.start("07_Parla_Office_01")
		Dialogic.signal_event.connect(_on_dialogic_signal)
	elif Global.contador_Parla_office == 2:
		self.hide()
		Dialogic.start("07_Parla_Office_02")
	
func _on_mouse_entered() -> void:
	Input.set_custom_mouse_cursor(Global.talk)
	$Label.show()

func _on_mouse_exited() -> void:
	Input.set_custom_mouse_cursor(Global.punta)
	$Label.hide()

func _on_dialogic_signal(argument:String):

	if argument == "phone_off":
		get_parent().get_node("Phone").hide()

	if argument == "phone_on":
		get_parent().get_node("Phone").show()

	if argument == "diego_to_agenda":
		Global.Contactos.get_or_add("Diego Lopez", 0)

	if argument == "end":
		Global.contador_Parla_office = 2
		Dialogic.end_timeline()
		self.show()
