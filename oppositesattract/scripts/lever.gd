extends Node2D

@onready var animated_sprite_2d: AnimatedSprite2D = $AnimatedSprite2D
@onready var metal_door: Node2D = $"../MetalDoor"

var in_range = false

func _input(event):
	if in_range and Input.is_action_just_pressed("interact"):
		if animated_sprite_2d.frame == 1:
			off()
		elif animated_sprite_2d.frame == 0:
			on()

func on():
	animated_sprite_2d.frame = 1
	metal_door.open()
		
func off():
	animated_sprite_2d.frame = 0
	metal_door.close()
	


func _on_button_prompt_body_entered(body: Node2D) -> void:
	in_range = true


func _on_button_prompt_body_exited(body: Node2D) -> void:
	in_range = false
