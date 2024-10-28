extends Node

func _ready() -> void:
	Dialogic.signal_event.connect(_on_dialogic_signal)
	$Phone.modulate.a = 0
	$Estatico.play("Idle")
	await $Estatico.animation_finished
	$Vibracion.queue("RESET")
	
func _process(_delta: float) -> void:
	pass

func _on_dialogic_signal(argument:String):
	if argument == "end":
		$ending.play("new_animation")
		await $ending.animation_finished
		get_tree().change_scene_to_file("res://scenes/room_02_bedroom_day.tscn")
