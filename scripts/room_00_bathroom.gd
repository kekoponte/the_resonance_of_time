extends Node

func _ready() -> void:
	$musica.play()
	Dialogic.signal_event.connect(_on_dialogic_signal)
	$Presentacion.play("fade_out")
	await $Presentacion.animation_finished
	$Presentacion.play("Presentacion")
	await $Presentacion.animation_finished
	$Presentacion.play("blink")
	Dialogic.start("monologo_inicial")

func _on_dialogic_signal(argument:String):
	if argument == "end":
		SceneSwitcher.switch_scene("res://scenes/room_01_bedroom.tscn")
