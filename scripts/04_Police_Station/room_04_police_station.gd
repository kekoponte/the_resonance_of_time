extends Node2D

func _ready() -> void:
	Global.Location = "Police Station"
	$label.play("intro")

	if Global.contador_police_station == "Primera vez":
		Global.listado_de_sitios.append("Police Station")
		Global.contador_police_station = "Normal"
	
	if Global.contador_police_station == "Normal":
		$label.play("intro")
		
	if Global.contador_police_station == "Después de hablar con Laura la primera vez":
		$label.play("intro")
		$Phone.hide()
		Dialogic.start("04_Police_Station_01")
		Dialogic.signal_event.connect(_on_dialogic_signal)
		Global.contador_police_station = "Normal sin entrar al despacho"
		Global.listado_de_diario.append("Liutenant Laura gave me until Wednesday at 9:00AM to do my own investigation")
		Global.listado_de_things.append("Visit Parla's junkyard")
		Global.listado_de_things.append("Talk with Michele")
		Global.listado_de_things.erase("Go to the Police Station")
		#Global.Global.contador_hospital = "Volver al hospital"
	
	if Global.contador_police_station == "Normal sin entrar al despacho":
		$label.play("intro")


func _on_dialogic_signal(argument:String):

	if argument == "end":
		Dialogic.end_timeline()
		$Phone.show()
