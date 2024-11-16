extends Node2D

@onready var collision_shape_2d: CollisionShape2D = $AnimatableBody2D/CollisionShape2D
@onready var sprite_2d: Sprite2D = $AnimatableBody2D/Sprite2D


func toggle():
	if sprite_2d.visible == false:
		collision_shape_2d.disabled = false
		sprite_2d.visible = true
	else:
		collision_shape_2d.disabled = true
		sprite_2d.visible = false
