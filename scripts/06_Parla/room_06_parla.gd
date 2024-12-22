extends Node2D


func _ready() -> void:
	Global.Location = "Parla Junkyard"
	$label.play("intro")

	if Global.contador_parla == 1:
		Global.listado_de_sitios.append("Parla")
		$AnimationPlayer.play("Parla")
		Dialogic.start("06_Parla_01")
		$Phone.hide()
		$Phone.set_process(false)
		Dialogic.signal_event.connect(_on_dialogic_signal)
		await $AnimationPlayer.animation_finished
		$AnimationPlayer.play("Parla_2")
		Global.contador_parla = 2
		Global.listado_de_things.erase("Visit Parla's junkyard?")

	elif Global.contador_parla == 2:
		$"06RedCar".show()
		$Phone.show()
		$Phone.set_process(true)

func _on_dialogic_signal(argument:String):
	if argument == "phone":
		$Phone.show()
		$Phone.set_process(true)
	if argument == "car":
		$"06RedCar".show()
	
	if argument == "stress":
		$AnimationPlayer.play("stress")
		await $AnimationPlayer.animation_finished
		$AnimationPlayer.play("Parla_2")
