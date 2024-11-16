extends Node2D

@onready var collision_shape_2d: CollisionShape2D = $AnimatableBody2D/CollisionShape2D
@onready var sprite_2d: Sprite2D = $AnimatableBody2D/Sprite2D


func open():
	collision_shape_2d.disabled = true
	sprite_2d.visible = false

	
func close():
	collision_shape_2d.disabled = false
	sprite_2d.visible = true
