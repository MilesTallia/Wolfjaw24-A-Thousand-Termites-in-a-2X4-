extends Node2D

@export var door_array: Array[Node2D] = []
@onready var animated_sprite_2d: AnimatedSprite2D = $AnimatedSprite2D



var in_range = false

func _input(event):
	if in_range and Input.is_action_just_pressed("interact"):
		if animated_sprite_2d.frame == 1:
			off()
		elif animated_sprite_2d.frame == 0:
			on()

func on():
	animated_sprite_2d.frame = 1
	for door in door_array:
		door.toggle()
		
func off():
	animated_sprite_2d.frame = 0
	for door in door_array:
		door.toggle()
	


func _on_button_prompt_body_entered(body: Node2D) -> void:
	if body.is_in_group("players"):
		in_range = true


func _on_button_prompt_body_exited(body: Node2D) -> void:
	if body.is_in_group("players"):
		in_range = false
