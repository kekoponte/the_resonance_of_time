extends Node

# Listado de Contactos en el teléfono
var Contactos = {
	"Alan Ferris" : 0,
	"Clara Cole" : 0,
	"Colin Baskins" : 0,
	"Dennis Bridge" : 0
	}
var Nombre_en_llamada = "init"
var Mobile_Time = 700
var Direccion = Vector2(0,0)
var Status_phone = 0



func _process(delta: float) -> void:
	if Global.Contactos["Alan Ferris"] == 1:
		Global.Contactos["Alan Ferris"] -= 1
		Dialogic.start("comunicando")
		Nombre_en_llamada = "Alan Ferris"

	if Global.Contactos["Clara Cole"] == 1:
		Global.Contactos["Clara Cole"] -= 1
		Dialogic.start("comunicando")
		Nombre_en_llamada = "Clara Cole"

	if Global.Contactos["Colin Baskins"] == 1:
		Global.Contactos["Colin Baskins"] -= 1
		Dialogic.start("comunicando")
		Nombre_en_llamada = "Colin Baskins"

	if Global.Contactos["Dennis Bridge"] == 1:
		Global.Contactos["Dennis Bridge"] -= 1
		Dialogic.start("comunicando")
		Nombre_en_llamada = "Dennis Bridge"
