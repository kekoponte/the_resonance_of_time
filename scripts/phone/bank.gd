extends Node2D


func _on_botón_de_bank_button_down() -> void:
	get_parent().get_node("face_id").play("face_id")
	await get_parent().get_node("face_id").animation_finished
	self.z_index = 1
	self.visible = true
