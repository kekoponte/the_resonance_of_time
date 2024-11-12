extends Node

# Listado de Contactos en el teléfono
var Contactos = {
	"Alan Ferris" : 0,
	"Clara Cole" : 0,
	"Colin Baskins" : 0,
	"Dennis Bridge" : 0
	}

var Nombre_en_llamada = "init" #Variable que muestra el nombre en el teléfono cuando hay llamadas
var Nombre_en_mensajes = "" #Variable que muestra el nombre en el teléfono cuando hay mensajes
var Hora = 7 #Horas en el móvil y en el juego
var Minutos = 16 #Minutos en el móvil y en el juego
var Direccion = Vector2(0,0) #Variable para mostrar un lugar en el mapa
var Status_phone = 0 #Variable genérica para temas varios del móvil
var bloc_de_notas = "" #Variable que guarda las notas del notepad
var mano = load("res://assets/interface/mouse.png") #Icono de ratón de mano
var punta = load("res://assets/interface/mouse_arrow.png") #Icono de ratón de flecha
var door = load("res://assets/interface/mouse_door.png") #Icono de ratón de puerta
var lupa = load("res://assets/interface/mouse_lupa.png") #Icono de ratón de lupa
var contador = 0 #Variable genérica para temas varios 
var Location = "" #Variable que guarda la localización actual. Relevante para la cámara
var clara = load("res://assets/locations/03_Morgue/Clara.png")
var listado_de_fotos = []

# Variables para guardar el estado de las fotos
var Clara_in_photos = 0


# Listado de Mensajes
var Contactos_Mensajes = {
	"Name 1" : 0,
	"Name 2" : 0,
	"Name 3" : 0,
	"Name 4" : 0
	}
