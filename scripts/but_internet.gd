extends Area2D

func _input_event(_viewport, event, _shape_idx):
	if event is InputEventMouseButton \
	and event.button_index == MOUSE_BUTTON_LEFT \
	and event.is_pressed():
		self.on_click()

func on_click():
	$But02InternetNorm.modulate.a = 0
	await get_tree().create_timer(0.1).timeout
	$But02InternetNorm.modulate.a = 100
