extends Node
var current_scene = null

func _ready() -> void:
	var root = get_tree().root
	current_scene = root.get_child(root.get_child_count() -1)

func switch_scene(res_path):
	Global.contador_fotos = 0
	call_deferred("_deferred_switch_scene", res_path)

func _deferred_switch_scene(res_path):
	current_scene.free()
	var s = load(res_path)
	current_scene = s.instantiate()
	get_tree().root.add_child(current_scene)
	get_tree().current_scene = current_scene
