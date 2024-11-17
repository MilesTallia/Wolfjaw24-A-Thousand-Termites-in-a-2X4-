extends Node2D

@onready var animated_sprite_2d: AnimatedSprite2D = $AnimatedSprite2D
@export var door_array: Array[Node2D] = []
@export var num_time: int
@onready var timer: Timer = $Timer
var counter: int = 0

var in_range = false

func _input(event):
	if in_range and Input.is_action_just_pressed("interact"):
		if animated_sprite_2d.frame == 0:
			on()

func on():
	animated_sprite_2d.frame = 1
	timer.start()
	for door in door_array:
		door.toggle()
		
func off():
	animated_sprite_2d.frame = 0
	for door in door_array:
		door.toggle()
		
func toggle():
	if animated_sprite_2d.frame == 0:
		on()
	

func _on_button_prompt_body_entered(body: Node2D) -> void:
	if body.is_in_group("players"):
		in_range = true

func _on_button_prompt_body_exited(body: Node2D) -> void:
	if body.is_in_group("players"):
		in_range = false


func _on_timer_timeout() -> void:
	counter += 1
	if counter >= num_time:
		off()
		counter = 0
		timer.stop()
		
