extends Node2D

func _ready() -> void:
	Global.Location = "La Paz Hospital"

	if Global.contador_hospital == "Primera vez":
		$label.play("intro")
		Dialogic.start("02_Wait_Room_01")
		$Phone.set_process(false)
		$Phone.hide()
		Dialogic.signal_event.connect(_on_dialogic_signal)
		Global.contador_hospital = "Normal"
	
	elif Global.contador_hospital == "Despues de identificar a Marcos":
		$label.play("intro")
		Dialogic.start("02_Wait_Room_02")
		Dialogic.signal_event.connect(_on_dialogic_signal)
		$Phone.set_process(false)
		$Phone.hide()
		Global.contador_hospital = "Normal"

	elif Global.contador_hospital == "Normal":
		$label.play("intro")

	elif Global.contador_hospital == "Volver al hospital":
		$label.play("intro")
		$Entrada.show()


func _on_dialogic_signal(argument:String):
	if argument == "phone":
		$Phone.show()
		$Phone.set_process(true)
		$morgue.show()
