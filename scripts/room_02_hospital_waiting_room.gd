extends Node2D


# Called when the node enters the scene tree for the first time.
func _ready() -> void:
	$label.play("intro")
	Dialogic.start("laura_01")
	$Phone.set_process(false)
	$Phone.hide()
	Dialogic.signal_event.connect(_on_dialogic_signal)

func _on_dialogic_signal(argument:String):
	if argument == "phone":
		$Phone.show()
		$Phone.set_process(true)
		$morgue.show()

	if argument == "police_station":
		Global.bloc_de_notas += "Go to the Police Station for interrogation"
