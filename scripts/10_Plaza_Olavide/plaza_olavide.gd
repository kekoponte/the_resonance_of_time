extends Node2D

func _ready() -> void:
	Global.Location = "Olavide Plaza"
	Global.subLocation = ""
	$Phone.hide()
	$label.play("intro")
	$back.play("back")
	Dialogic.start("plz_olavide")
	Dialogic.signal_event.connect(_on_dialogic_signal)

func _on_dialogic_signal(argument:String):

	if argument == "phone_on":
		$Phone.show()
