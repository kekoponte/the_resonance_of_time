extends RichTextLabel


func _ready() -> void:
	self.text = "La Paz Hospital " + str(Global.Hora) + ":" + str(Global.Minutos)
