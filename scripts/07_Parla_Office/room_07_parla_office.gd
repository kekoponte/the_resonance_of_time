extends Node2D

func _ready() -> void:
	Global.Location = "Parla Office"
	$AnimationPlayer.play("blink")
