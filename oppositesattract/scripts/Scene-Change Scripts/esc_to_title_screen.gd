extends Node2D

@export var next_room_path: String

func _process(_delta: float) -> void:
	if Input.is_action_just_pressed("pause"):
		get_tree().change_scene_to_file(next_room_path)
