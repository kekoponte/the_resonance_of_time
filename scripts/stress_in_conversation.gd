extends Node2D


# Called when the node enters the scene tree for the first time.
func _ready() -> void:
	pass # Replace with function body.


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta: float) -> void:
	if Global.stress == 3:
		$Control/thunder3.show()
		$Control/thunder2.show()
		$Control/thunder.show()
	if Global.stress == 2:
		$Control/thunder3.hide()
	if Global.stress == 1:
		$Control/thunder2.hide()
	if Global.stress == 0:
		$Control/thunder.hide()
