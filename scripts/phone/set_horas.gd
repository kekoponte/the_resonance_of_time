extends RichTextLabel


func _ready() -> void:
	self.text = "[center]" + str(Global.Hora) + ":" + str(Global.Minutos) + "[/center]"
