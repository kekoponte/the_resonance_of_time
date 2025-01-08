extends RichTextLabel

func _ready() -> void:
	await get_tree().create_timer(0.1).timeout
	var SHora = str(Global.Hora)
	var SMinutos = "0"
	if Global.Minutos < 10:
		SMinutos = "0" + str(Global.Minutos)
	else:
		SMinutos = str(Global.Minutos)
	if Global.Hora < 10:
		SHora = "0" + str(Global.Hora)
	else:
		SHora = str(Global.Hora)
	self.text = Global.Location + "  " + SHora + ":" + SMinutos
