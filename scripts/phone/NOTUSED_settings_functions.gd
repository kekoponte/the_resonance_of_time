extends Node2D

const SAVE_DIR = "user://saves/"
const SAVE_FILE_NAME = "save.json"
const SECURITY_KEY = "32r23wef!p"

var player_data = PlayerData.new()

func _ready() -> void:
	verify_save_directory(SAVE_DIR)

func verify_save_directory(path: String):
	DirAccess.make_dir_absolute(path)

func save_data(path: String):
	var file = FileAccess.open_encrypted_with_pass(path, FileAccess.WRITE, SECURITY_KEY)
	if file == null:
		print(FileAccess.get_open_error())
		return

	#var data = {
		#Contactos = Global.Contactos,
		#Nombre_en_llamada = Global.Nombre_en_llamada,
		#Nombre_en_mensajes = Global.Nombre_en_mensajes,
		#Hora = Global.Hora,
		#Minutos = Global.Minutos,
		#Dia = Global.dia,
		#marcado_telefono = Global.marcado_telefono,
		#Direccion = Global.Direccion,
		#Status_Phone = Global.Status_phone,
		#bloc_de_notas = Global.bloc_de_notas,
		#contador = Global.contador,
		#clara = Global.clara,
		#listado_de_fotos = Global.listado_de_fotos,
		#listado_de_files = Global.listado_de_files,
		#notificacion_files = Global.notificacion_files,
		#Search_name = Global.Search_name,
		#Search_surname = Global.Search_surname,
		#listado_de_sitios = Global.listado_de_sitios,
		#listado_de_things = Global.listado_de_things,
		#listado_de_diario = Global.listado_de_diario,
		#stress = Global.stress,
		#termino_de_busqueda = Global.termino_de_busqueda,
		#contador_fotos = Global.contador_fotos,
		#Clara_in_photos = Global.Clara_in_photos,
		#matricula_in_photos = Global.matricula_in_photos,
		#Location = Global.Location,
		#subLocation = Global.subLocation,
		#contador_hospital = Global.contador_hospital,
		#contador_waiting_room = Global.contador_waiting_room,
		#contador_morgue = Global.contador_morgue,
		#contador_morgue_2 = Global.contador_morgue_2,
		#contador_police_station = Global.contador_police_station,
		#contador_laura_office = Global.contador_laura_office,
		#contador_parla = Global.contador_parla,
		#contador_parla_matricula = Global.contador_parla_matricula,
		#activar_parla = Global.activar_parla,
		#activar_traffic = Global.activar_traffic,
		#contador_Parla_office = Global.contador_Parla_office,
		#contador_traffic_control = Global.contador_traffic_control,
	 	#contador_conversacion_guarda = Global.contador_conversacion_guarda,
		#traffic_control_foto_furgoneta = Global.traffic_control_foto_furgoneta,
		#Contactos_Mensajes = Global.Contactos_Mensajes
		#}
	var data = {}
	
	var json_string = JSON.stringify(data, "\t")
	file.store_string(json_string)
	file.close()


func load_data(path: String):
	if FileAccess.file_exists(path):
		var file = FileAccess.open_encrypted_with_pass(path, FileAccess.READ, SECURITY_KEY)
		if file == null:
			print(FileAccess.get_open_error())
			return
			
		var content = file.get_as_text()
		file.close()
		
		var data = JSON.parse_string(content)
		if data == null:
			printerr("No data found")
			return
		
		var player_data = Global.new()
		player_data.Contactos = data.player_data.Contactos
		player_data.Nombre_en_llamada = data.player_data.Nombre_en_llamada
		player_data.Nombre_en_mensajes = data.player_data.Nombre_en_mensajes
		player_data.Hora = data.player_data.Hora
		player_data.Minutos = data.player_data.Minutos
		player_data.Dia = data.player_data.dia
		player_data.marcado_telefono = data.player_data.marcado_telefono
		player_data.Direccion = data.player_data.Direccion
		player_data.Status_Phone = data.player_data.Status_phone
		player_data.bloc_de_notas = data.player_data.bloc_de_notas
		player_data.contador = data.player_data.contador
		player_data.clara = data.player_data.clara
		player_data.listado_de_fotos = data.player_data.listado_de_fotos
		player_data.listado_de_files = data.player_data.listado_de_files
		player_data.notificacion_files = data.player_data.notificacion_files
		player_data.Search_name = data.player_data.Search_name
		player_data.Search_surname = data.player_data.Search_surname
		player_data.listado_de_sitios = data.player_data.listado_de_sitios
		player_data.listado_de_things = data.player_data.listado_de_things
		player_data.listado_de_diario = data.player_data.listado_de_diario
		player_data.stress = data.player_data.stress
		player_data.termino_de_busqueda = data.player_data.termino_de_busqueda
		player_data.contador_fotos = data.player_data.contador_fotos
		player_data.Clara_in_photos = data.player_data.Clara_in_photos
		player_data.matricula_in_photos = data.player_data.matricula_in_photos
		player_data.Location = data.player_data.Location
		player_data.subLocation = data.player_data.subLocation
		player_data.contador_hospital = data.player_data.contador_hospital
		player_data.contador_waiting_room = data.player_data.contador_waiting_room
		player_data.contador_morgue = data.player_data.contador_morgue
		player_data.contador_morgue_2 = data.player_data.contador_morgue_2
		player_data.contador_police_station = data.player_data.contador_police_station
		player_data.contador_laura_office = data.player_data.contador_laura_office
		player_data.contador_parla = data.player_data.contador_parla
		player_data.contador_parla_matricula = data.player_data.contador_parla_matricula
		player_data.activar_parla = data.player_data.activar_parla
		player_data.activar_traffic = data.player_data.activar_traffic
		player_data.contador_Parla_office = data.player_data.contador_Parla_office
		player_data.contador_traffic_control = data.player_data.contador_traffic_control
		player_data.contador_conversacion_guarda = data.player_data.contador_conversacion_guarda
		player_data.traffic_control_foto_furgoneta = data.player_data.traffic_control_foto_furgoneta
		player_data.Contactos_Mensajes = data.player_data.Contactos_Mensajes
		
		
	else:
		printerr("no file to load")




func _on_load_button_up() -> void:
	load_data(SAVE_DIR + SAVE_FILE_NAME)

func _on_save_button_up() -> void:
	save_data(SAVE_DIR + SAVE_FILE_NAME)
