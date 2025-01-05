extends TextureButton

func _on_button_down() -> void:
	if Global.contador_laura_office == 1:
		self.hide()
		Dialogic.start("05_Laura_Office_01")
		Dialogic.signal_event.connect(_on_dialogic_signal)
		Global.activar_parla = 1
		Global.listado_de_files.append("Autopsy Report")
		Global.notificacion_files = 1

	elif Global.contador_laura_office == 2:
		self.hide()
		Dialogic.start("05_Laura_Office_02")
	
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

	if argument == "end":
		self.show()
		Global.contador_laura_office = 2
		Global.contador_police_station = "Después de hablar con Laura la primera vez"
		Dialogic.end_timeline()
		
