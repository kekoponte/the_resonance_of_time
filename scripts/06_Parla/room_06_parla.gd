extends Node2D


func _ready() -> void:
	Global.Location = "Parla"
	$AnimationPlayer.play("Parla")
	Dialogic.start("06_Parla_01")
	$Phone.hide()
	$Phone.set_process(false)
	Dialogic.signal_event.connect(_on_dialogic_signal)
	await $AnimationPlayer.animation_finished
	$AnimationPlayer.play("Parla_2")

func _on_dialogic_signal(argument:String):
	if argument == "phone":
		$Phone.show()
		$Phone.set_process(true)
	if argument == "car":
		$"06RedCar".show()
