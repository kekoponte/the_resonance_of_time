extends BoxContainer


func _ready() -> void:
	for i in Global.listado_de_fotos:
		var fotos_individuales = Sprite2D.new()
		add_child(fotos_individuales)
		fotos_individuales.scale = Vector2(0.1, 0.1)
		fotos_individuales.texture = i
