extends TextEdit



func _on_focus_exited() -> void:
	AddNotesToThings.save_notes_in_global()
