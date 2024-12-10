extends Node2D

func _ready() -> void:
	$AnimationPlayer.play("background")
	Global.Location = "Traffic Control"
	$label.play("intro")
