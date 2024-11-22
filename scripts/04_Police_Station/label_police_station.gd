extends RichTextLabel


func _ready() -> void:
	self.text = "Police Station " + str(Global.Hora) + ":" + str(Global.Minutos)
