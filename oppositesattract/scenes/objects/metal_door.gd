extends Node2D

@onready var collision_shape_2d: CollisionShape2D = $AnimatableBody2D/CollisionShape2D


func open():
	collision_shape_2d.disabled = true
	
func close():
	collision_shape_2d.disabled = false
