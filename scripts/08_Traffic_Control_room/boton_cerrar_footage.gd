extends TextureButton


func _on_button_down() -> void:
	self.hide()
	Global.contador_traffic_control = 3
