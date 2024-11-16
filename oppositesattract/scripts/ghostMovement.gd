extends CharacterBody2D

@export var speed = 400

func get_input():
	var input_direction = Input.get_vector("ghost left", "ghost right", "ghost up", "ghost down")
	velocity = input_direction * speed

func _physics_process(_delta):
	get_input()
	move_and_slide()
	if velocity.x > 0:
		$AnimatedSprite2D.flip_h = true;
	if velocity.x < 0:
		$AnimatedSprite2D.flip_h = false;
