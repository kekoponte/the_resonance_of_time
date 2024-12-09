extends RichTextLabel


func _ready() -> void:
	await get_tree().create_timer(0.1).timeout
	print(Global.Location)
	self.text = Global.Location + "  " + str(Global.Hora) + ":" + str(Global.Minutos)
