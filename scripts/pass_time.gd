extends Node

func pass_time(minutes) -> void:
	if (Global.Minutos + minutes) > 60:
		var sumahoras = int((Global.Minutos + minutes) / 60)
		Global.Hora += sumahoras
		var sumaminutos = (Global.Minutos + minutes) - (sumahoras * 60)
		Global.Minutos = sumaminutos
		cambio_dia()


	elif (Global.Minutos + minutes) < 60:
		Global.Minutos += minutes

func cambio_dia():
	if Global.Hora > 23:
		if Global.dia == "[center]Monday[/center]":
			Global.dia = "[center]Tuesday[/center]"
			Global.Hora = Global.Hora - 24
	else:
		pass
