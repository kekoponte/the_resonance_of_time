extends Node2D

func _ready() -> void:
	Global.Location = "Home"
	Global.subLocation = "Bedroom"
	if Global.Hora > 7 and Global.Hora < 20:
		$"01BedroomNight".hide()
	else:
		$"01BedroomNight".show()
