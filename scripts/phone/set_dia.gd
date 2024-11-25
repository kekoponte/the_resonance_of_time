extends RichTextLabel


func _ready() -> void:
	self.text = str(Global.dia)


func _on_mouse_entered() -> void:
	Input.set_custom_mouse_cursor(Global.mano)
