extends Node2D

func _ready() -> void:
	Global.Location = "Morgue"
	Dialogic.start("morgue")
	$Phone.set_process(false)
	$Phone.hide()
	Dialogic.signal_event.connect(_on_dialogic_signal)

func _on_dialogic_signal(argument:String):
	if argument == "musica":
		$haendel_song.play("song")

	elif argument == "fade_in":
		$fade_in.play("start")
		await $fade_in.animation_finished

	elif argument == "fade_out":
		$fade_in.play("out")

	elif argument == "phone":
		$Phone.show()
		$Phone.set_process(true)

	elif argument == "life_start":
		Global.stress = 0
		$stress_del_personaje.show()
	
	elif argument == "life_down":
		Global.stress += 1
	
	elif argument == "end_morgue":
		SceneSwitcher.switch_scene("res://scenes/room_02_hospital_waiting_room.tscn")
