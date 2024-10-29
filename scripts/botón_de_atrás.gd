extends TextureButton

func _pressed():
	get_parent().get_parent().visible = false
