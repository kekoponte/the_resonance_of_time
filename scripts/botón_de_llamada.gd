extends TextureButton


func _on_button_pressed():
	get_parent().visible = !get_parent().visible 
