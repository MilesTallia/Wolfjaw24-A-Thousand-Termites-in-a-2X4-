extends Node2D

@export var door_array: Array[Node2D] = []

@onready var circuit_breaker_sprite: AnimatedSprite2D = $circuit_breaker_sprite
@onready var ghost_interact: Node = $ghost_interact



var in_range = false

func toggle():
			if circuit_breaker_sprite.frame == 1:
				off()
			elif circuit_breaker_sprite.frame == 0:
				on()

func on():
	circuit_breaker_sprite.frame = 1
	for door in door_array:
		door.toggle()
		
func off():
	circuit_breaker_sprite.frame = 0
	for door in door_array:
		door.toggle()
	


func _on_button_prompt_body_entered(body: Node2D) -> void:
	if body.is_in_group("players"):
		in_range = true


func _on_button_prompt_body_exited(body: Node2D) -> void:
	if body.is_in_group("players"):
		in_range = false
