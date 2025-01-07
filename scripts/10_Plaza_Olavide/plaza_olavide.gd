extends Node2D

func _ready() -> void:
	Global.Location = "Olavide Plaza"
	Global.subLocation = ""
	$label.play("intro")
