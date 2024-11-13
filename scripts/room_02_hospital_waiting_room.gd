extends Node2D


# Called when the node enters the scene tree for the first time.
func _ready() -> void:
	
	if Global.track_de_escenas == 1:
		$label.play("intro")
		Dialogic.start("laura_01")
		$Phone.set_process(false)
		$Phone.hide()
		Dialogic.signal_event.connect(_on_dialogic_signal)

	elif Global.track_de_escenas == 2:
		Dialogic.start("Esther_hospital_vuelta")
		$Phone.set_process(false)
		$Phone.hide()
		Dialogic.signal_event.connect(_on_dialogic_signal)

	else:
		pass

func _on_dialogic_signal(argument:String):
	if argument == "phone":
		$Phone.show()
		$Phone.set_process(true)
		$morgue.show()
		Global.track_de_escenas = 2

	if argument == "police_station":
		Global.bloc_de_notas += "Go to the Police Station for interrogation"
