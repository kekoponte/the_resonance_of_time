extends Node

# Listado de Contactos en el teléfono
var Contactos = {
	"Alan" : 0,
	"Jake" : 0
	}
	

func cambiar_escena_telefono():
	pass

func _process(delta: float) -> void:
	if Global.Contactos["Alan"] == 1:
		Dialogic.start("llamada_1_con_Alan")
