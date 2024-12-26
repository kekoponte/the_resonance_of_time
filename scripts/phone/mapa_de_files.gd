extends Node2D

func _on_area_2d_input_event(_viewport: Node, event: InputEvent, _shape_idx: int) -> void:

	if event is InputEventMouseButton:
		if event.button_index == MOUSE_BUTTON_WHEEL_UP:
			print(position.y)
			position.y += 10
	
		if event.button_index == MOUSE_BUTTON_WHEEL_DOWN:
			print(position.y)
			position.y -= 10
			if position.y > 1110:
				position.y -=10
	else:
		pass
