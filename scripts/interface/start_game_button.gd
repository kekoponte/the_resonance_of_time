extends Button

func on_Button_pressed():
	print("boton")
	get_tree().change_scene_to_file("res://scenes/room_01_bedroom.tscn")
