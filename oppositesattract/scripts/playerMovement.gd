extends CharacterBody2D

@export var speed = 100

func get_input():
	var input_direction = Input.get_vector("human left", "human right", "human up", "human down")
	velocity = input_direction * speed

func _physics_process(_delta):
	get_input()
	move_and_slide()
	if velocity.x > 0:
		$AnimatedSprite2D.flip_h = false;
		$AnimatedSprite2D.animation = "walking"
	if velocity.x < 0:
		$AnimatedSprite2D.flip_h = true;
		$AnimatedSprite2D.animation = "walking"
	if velocity.y != 0:
		$AnimatedSprite2D.animation = "walking"
	if velocity.x == 0 && velocity.y == 0:
		$AnimatedSprite2D.animation = "idle"
