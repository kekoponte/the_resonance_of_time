extends Node

# Listado de Contactos en el teléfono
var Contactos = {
	"Alan" : 0,
	"Jake" : 0
	}
var Nombre_en_llamada = "init"
var Mobile_Time = 700


func _cambiar_escena_telefono():
	pass

func _process(delta: float) -> void:
	if Global.Contactos["Alan"] == 1:
		Global.Contactos["Alan"] += 1
		Dialogic.start("llamada_1_con_Alan")
		Nombre_en_llamada = "Alan"
