extends Node2D

#Funcionalidad de click and drag del mapa

var selected = false
var mouse_offset = Vector2()

func _process(_delta):
	if selected:
		followmouse()

func followmouse():
	position = get_global_mouse_position() + mouse_offset 

func _on_area_2d_input_event(_viewport: Node, event: InputEvent, _shape_idx: int) -> void:
	if event is InputEventMouseButton and event.button_index == MOUSE_BUTTON_LEFT:
		if event.pressed:
			mouse_offset = position - get_global_mouse_position()
			selected = true
		else:
			selected = false


#Funcionalidad de ir al destino 
#Global.direccion se define en "busqueda del mapa.gd"

func _on_text_submitted(_new_text: String) -> void:
	await get_tree().create_timer(0.3).timeout 
	position = Global.Direccion
	print(Global.Direccion)
	$marker.position = Vector2(68,135) - Global.Direccion 
	$Boton_ir.position = Vector2(28,150) - Global.Direccion
	$marker.show()
	$Boton_ir.show()
