extends Sprite2D
var contador = 0
func _input(event):
	# Mouse in viewport coordinates.
	if event is InputEventMouse and event.position >= Vector2(450,150):
		if contador == 0 and self.get_parent().visible:
			$AudioStreamPlayer2D.play()
			contador += 1
		self.hide()
	if event is InputEventMouse and event.position < Vector2(450,150):
		self.show()
		contador = 0
