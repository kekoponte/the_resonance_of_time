extends TextureButton


func _on_button_down() -> void:
	self.hide()
	Dialogic.start("05_Laura_Office_01")
	Dialogic.signal_event.connect(_on_dialogic_signal)

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
