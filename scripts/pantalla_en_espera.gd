extends Sprite2D
var contador = 0
func _input(event):
	# Mouse in viewport coordinates.
	if event is InputEventMouse and event.position >= Vector2(460,150):
		if contador == 0 and self.get_parent().visible:
			$AudioStreamPlayer2D.play()
			contador += 1
			Input.set_default_cursor_shape(Input.CURSOR_POINTING_HAND)
		self.hide()
	if event is InputEventMouse and event.position < Vector2(420,150):
		self.show()
		Input.set_default_cursor_shape(Input.CURSOR_ARROW)
		contador = 0
