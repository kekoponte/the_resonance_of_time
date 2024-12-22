extends Node2D

func _ready() -> void:
	$AnimationPlayer.play("background")
	Global.Location = "Traffic Control"
	$label.play("intro")
	if Global.contador_traffic_control == 1:
		Global.listado_de_sitios.append("Traffic Control")
		Global.contador_traffic_control = 2
	
