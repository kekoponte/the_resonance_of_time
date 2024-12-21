extends Node2D

func _ready() -> void:
	Global.Location = "Police Station"
	$label.play("intro")
	Global.listado_de_sitios.append("La Paz Hospital")
	if Global.contador_police_station == 2:
		$Phone.hide()
		Dialogic.start("04_Police_Station_01")
		Dialogic.signal_event.connect(_on_dialogic_signal)
		Global.contador_police_station = 1


func _on_dialogic_signal(argument:String):

	if argument == "end":
		Dialogic.end_timeline()
		$Phone.show()
