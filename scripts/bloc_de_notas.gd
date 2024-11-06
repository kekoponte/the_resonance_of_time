extends TextEdit

#Funcion que guarda el bloc de notas en una variable global cuando se pierde el foco

func _on_focus_exited() -> void:
	Global.bloc_de_notas = self.text 
	print(Global.bloc_de_notas)
