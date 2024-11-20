extends Node2D


func _on_hands_button_down() -> void:
	self.set_process(false)
	self.hide() 


func _on_face_button_down() -> void:
	self.set_process(false)
	self.hide() 
