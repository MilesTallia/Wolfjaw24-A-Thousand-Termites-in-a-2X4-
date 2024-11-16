extends Node2D

@onready var exit_anim: TextureProgressBar = $exit_anim
@onready var exit_timer: Timer = $exit_timer

@export var next_room_path: String
var num_players: int = 0

func _on_area_2d_body_entered(body: Node2D) -> void:
	print(num_players)
	if body.is_in_group("players"):
		num_players += 1
		if num_players == 2:
			exit_anim.show()
			exit_timer.start()


func _on_area_2d_body_exited(body: Node2D) -> void:
	if body.is_in_group("players"):
		num_players -= 1
		exit_timer.stop()
		exit_anim.hide()


func _on_exit_timer_timeout() -> void:
	exit_anim.value += 1
	if exit_anim.value >= 20:
		get_tree().change_scene_to_file(next_room_path)
