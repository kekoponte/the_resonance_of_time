extends TextureButton

func _on_button_down() -> void:
	if Global.contador_conversacion_guarda == 1:
		self.hide()
		Dialogic.start("08_traffic_control_01")
		Dialogic.signal_event.connect(_on_dialogic_signal)
	elif Global.contador_conversacion_guarda == 2:
		self.hide()
		Dialogic.start("08_traffic_control_matricula")
	elif Global.contador_conversacion_guarda == 3:
		self.hide()
		Dialogic.start("08_traffic_control_fin")
		$AnimationPlayer.play("RESET")
		
	elif Global.contador_conversacion_guarda == 4:
		self.hide()
		Dialogic.start("08_traffic_control_pantalla")
	
	elif Global.contador_conversacion_guarda == 5:
		self.hide()
		Dialogic.start("08_traffic_control_cabreado")		
	
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
		Dialogic.end_timeline()
		self.show()

	if argument == "matricula":
		Global.contador_conversacion_guarda = 2

	if argument == "fin_matricula":
		Global.contador_conversacion_guarda = 3
	
	if argument == "footage":
		self.set_disabled(true)
		$AnimationPlayer.play("footage")
		await $AnimationPlayer.animation_finished
		Dialogic.start("08_traffic_control_footage_2")
		self.hide()
	
	if argument == "van":
		self.show()
		self.set_disabled(true)
		$AnimationPlayer.play("footage2")
		await $AnimationPlayer.animation_finished
		$ver_footage.show()
		self.set_disabled(false)
		Global.contador_conversacion_guarda = 4
		
	if argument == "stress":
		get_parent().get_node("label").play("stress")
	
	if argument == "fin_cabreado":
		Global.contador_conversacion_guarda = 5
		Dialogic.end_timeline()
		self.show()
