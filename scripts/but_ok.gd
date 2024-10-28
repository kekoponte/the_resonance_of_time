extends Area2D

func _input_event(_viewport, event, _shape_idx):
	if event is InputEventMouseButton \
	and event.button_index == MOUSE_BUTTON_LEFT \
	and event.is_pressed():
		self.on_click()
		Dialogic.start("primer_dia")		

func on_click():
	self.get_parent().get_parent().stop()
