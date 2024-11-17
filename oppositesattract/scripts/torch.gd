extends Node2D

@onready var torch_hit: AnimatableBody2D = $torch_hit
@onready var collision_shape_2d: CollisionShape2D = $torch_hit/CollisionShape2D
@onready var animated_sprite_2d: AnimatedSprite2D = $torch_hit/AnimatedSprite2D



var in_range = false

func _input(event):
	if in_range and Input.is_action_just_pressed("interact"):
		if animated_sprite_2d.frame == 0:
			animated_sprite_2d.frame = 1
			torch_hit.set_collision_layer_value(4, false)



func _on_area_2d_body_entered(body: Node2D) -> void:
	if body.is_in_group("players"):
		in_range = true
		
func _on_area_2d_body_exited(body: Node2D) -> void:
	if body.is_in_group("players"):
		in_range = false
