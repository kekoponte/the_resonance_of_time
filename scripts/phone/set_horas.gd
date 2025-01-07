extends RichTextLabel


func _ready() -> void:
	var SHora = str(Global.Hora)
	var SMinutos = "0"
	if Global.Minutos < 10:
		SMinutos = "0" + str(Global.Minutos)
	else:
		SMinutos = str(Global.Minutos)
	self.text = "[center]" + SHora + ":" + SMinutos + "[/center]"
