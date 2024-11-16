extends Node2D

@onready var animated_sprite_2d: AnimatedSprite2D = $AnimatedSprite2D

var in_range = false

func _on_body_entered(body: Node2D) -> void:
	in_range = true


func _on_body_exited(body: Node2D) -> void:
	in_range = false

func _input(event):
	if Input.is_action_just_pressed("interact"):
		if animated_sprite_2d.frame == 1:
			off()
		elif animated_sprite_2d.frame == 0:
			on()

func on():
	animated_sprite_2d.frame = 1
		
func off():
	animated_sprite_2d.frame = 0
	
