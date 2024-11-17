extends Node2D

func _ready() -> void:
	if Global.track_de_escena == 1:
		$label.play("intro")
		Dialogic.start("02_Wait_Room_01")
		$Phone.set_process(false)
		$Phone.hide()
		Dialogic.signal_event.connect(_on_dialogic_signal)
		Global.track_de_escena = 2
	
	elif Global.track_de_escena == 2:
		print(Global.track_de_escena)
		$label.play("intro")
		Dialogic.start("02_Wait_Room_02")
		Dialogic.signal_event.connect(_on_dialogic_signal)
		$Phone.set_process(false)
		$Phone.hide()
	
func _on_dialogic_signal(argument:String):
	if argument == "phone":
		$Phone.show()
		$Phone.set_process(true)
		$morgue.show()

	if argument == "police_station":
		Global.bloc_de_notas += "Go to the Police Station for interrogation"
