extends Node2D

func _ready() -> void:
	Dialogic.signal_event.connect(_on_dialogic_signal)

func _process(_delta: float) -> void:
	$Nombre_Llamada.text = Global.Nombre_en_llamada

func _on_dialogic_signal(argument:String):
	if argument == "end":
		get_parent().hide()
