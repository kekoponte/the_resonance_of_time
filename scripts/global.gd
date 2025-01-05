extends Node

# Listado de Contactos en el teléfono
var Contactos = {
	"Abraham Vieito" : 0,
	"Adrián Rodríguez" : 0,
	"Ángela Lopez" : 0,
	"Antonio Ramiro" : 0,
	"Bea Rodríguez": 0,
	"Carmen Vieito" : 0,
	"Colin Baskins" : 0,
	"David García" : 0,
	"Dennis Bridge" : 0,
	"Isabel Peña" : 0,
	"Marcos de la Fuente" :0,
	"Marta Mendez" : 0,
	"Patricia Mata" : 0,
	"Pedro Martín-Calero" : 0,
	"Ramón Olivares" : 0,
	"Roi Villamarín" :0,
	"Tito Calas" :0,
	"Vanessa Perez" :0,
	"Yago Dopazo" :0,
	}

var Nombre_en_llamada:String = "init" #Variable que muestra el nombre en el teléfono cuando hay llamadas
var Nombre_en_mensajes:String = "" #Variable que muestra el nombre en el teléfono cuando hay mensajes
var Hora:int = 7 #Horas en el móvil y en el juego
var Minutos:int = 16 #Minutos en el móvil y en el juego
var dia:String = "[center]Monday[/center]"
var marcado_telefono:String = ""
var Direccion = Vector2(0,0) #Variable para mostrar un lugar en el mapa
var Status_phone:int = 0 #Variable genérica para temas varios del móvil
var bloc_de_notas:String = "" #Variable que guarda las notas del notepad
var mano = load("res://assets/interface/mouse.png") #Icono de ratón de mano
var punta = load("res://assets/interface/mouse_arrow.png") #Icono de ratón de flecha
var door = load("res://assets/interface/mouse_door.png") #Icono de ratón de puerta
var lupa = load("res://assets/interface/mouse_lupa.png") #Icono de ratón de lupa
var talk = load("res://assets/interface/mouse_boca.png") #Icono de ratón de hablar
var contador:int = 0 #Variable genérica para temas varios 
var clara = load("res://assets/locations/03_Morgue/Clara.png")
var listado_de_fotos:Array = [load("res://assets/phone/old_photos/01.png"),
load("res://assets/phone/old_photos/02.png"),
load("res://assets/phone/old_photos/03.png"),
load("res://assets/phone/old_photos/04.png"),
load("res://assets/phone/old_photos/05.png"),
load("res://assets/phone/old_photos/06.png"),
load("res://assets/phone/old_photos/07.png"),
load("res://assets/phone/old_photos/08.png"),
load("res://assets/phone/old_photos/09.png"),
load("res://assets/phone/old_photos/10.png"),
load("res://assets/phone/old_photos/11.png"),
load("res://assets/phone/old_photos/12.png"),
load("res://assets/phone/old_photos/13.png"),
load("res://assets/phone/old_photos/14.png"),
load("res://assets/phone/old_photos/15.png"),
load("res://assets/phone/old_photos/16.png"),
load("res://assets/phone/old_photos/17.png"),
load("res://assets/phone/old_photos/18.png"),
load("res://assets/phone/old_photos/19.png"),
load("res://assets/phone/old_photos/20.png"),
load("res://assets/phone/old_photos/21.png")]
var listado_de_files:Array = ["About"]
var notificacion_files:int = 0
var Search_name:String = ""
var Search_surname:String = ""

var listado_de_sitios:Array = ["Home","La Paz Hospital"]
var listado_de_things:Array = ["Go to the morgue"]
var listado_de_diario:Array = ["Liutenant Laura call me this morning, looks like a corpse was found and it might be my brother."]
var stress:int = 3

# Variables para guardar el estado de las fotos
var contador_fotos = 0
var Clara_in_photos = 0
var matricula_in_photos:int = 0

# Variables por habitaciones
var Location:String = "" #Variable que guarda la localización actual. Relevante para la cámara
var subLocation:String = ""
var contador_hospital:String = "Primera vez"
var contador_waiting_room:int = 1
var contador_morgue:String = "Primera vez"
var contador_morgue_2:String = "Primera vez"
var contador_police_station:String = "Primera vez"
var contador_laura_office:int = 1
var contador_parla:int = 1
var contador_parla_matricula = 1
var activar_parla:int = 0
var activar_traffic:bool = false
var contador_Parla_office:int = 1
var contador_traffic_control:int = 1
var contador_conversacion_guarda:int = 1
var traffic_control_foto_furgoneta:int = 0

# Listado de Mensajes
var Contactos_Mensajes = {
	"Name 1" : 0,
	"Name 2" : 0,
	"Name 3" : 0,
	"Name 4" : 0
	}
