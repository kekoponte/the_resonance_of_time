extends ProgressBar

func _process(_delta: float) -> void:
	self.value = Global.stress
