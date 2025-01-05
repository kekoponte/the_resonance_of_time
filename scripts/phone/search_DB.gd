extends TextureButton



func _on_button_down() -> void:
	$notfound.hide()
	$loading.play("loading")
	await $loading.animation_finished
	$loading.play("RESET")
	if Global.Search_name == "Michele" and Global.Search_surname == "Carro":
		get_parent().get_node("Ficha_Michele").show()
	else:
		$notfound.show()
