extends RichTextLabel


func _ready() -> void:
	self.text = str(Global.Hora) + ":" + str(Global.Minutos)
