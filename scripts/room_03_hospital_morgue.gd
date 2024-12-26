extends Node2D

func _ready() -> void:
	Global.Location = "La Paz Hospital"
	if Global.contador_morgue == "Primera vez":
		$fondo.play("fondo_morgue")
		Dialogic.start("morgue")
		$Phone.set_process(false)
		$Phone.hide()
		Dialogic.signal_event.connect(_on_dialogic_signal)
		Global.contador_morgue = "Normal"
	elif Global.contador_morgue == "Normal":
		Dialogic.signal_event.connect(_on_dialogic_signal)
		$fade_in/ColorRect.hide()
		
func _on_dialogic_signal(argument:String):
	if argument == "musica":
		$haendel_song.play("song")
		
	elif argument == "stress":
		$fondo.play("stress")

	elif argument == "fade_in":
		$fade_in.play("start")
		await $fade_in.animation_finished

	elif argument == "fade_out":
		$fade_in.play("out")

	elif argument == "phone":
		$Phone.show()
		$Phone.set_process(true)

	elif argument =="phone_off":
		$Phone.hide()
		$Phone.set_process(false)
		
	elif argument == "life_start":
		Global.stress = 0
		$stress_del_personaje.show()
	
	elif argument == "life_down":
		Global.stress += 1
	
	elif argument == "end_morgue":
		SceneSwitcher.switch_scene("res://scenes/room_02_hospital_waiting_room.tscn")

	elif argument == "track_room":
		Global.contador_waiting_room = 2
		Global.listado_de_diario.append("I went to the morgue and my brother Marcos was there")
		Global.listado_de_things.erase("Go to the morgue")
		Global.listado_de_things.append("Go to the Police Station")
		Global.contador_hospital = "Despues de identificar a Marcos"
		Global.contador_morgue_2 = "Despues de identificar a Marcos"
