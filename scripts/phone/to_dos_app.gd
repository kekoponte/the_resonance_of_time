extends Node2D


func _on_botón_de_story_button_up() -> void:
	AddNotesToThings.add_thing_to_todos()
	self.z_index = 1
	self.visible = true
