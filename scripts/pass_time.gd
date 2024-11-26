extends Node

func pass_time(minutes) -> void:
	if Global.Minutos + minutes > 60:
		var sumahoras = int(minutes / 60)
		Global.Hora += sumahoras
		var sumaminutos = minutes - (sumahoras * 60)
		Global.Minutos += sumaminutos
