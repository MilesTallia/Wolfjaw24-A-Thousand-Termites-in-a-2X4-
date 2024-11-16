extends CharacterBody2D

@export var speed = 150

func get_input():
	var input_direction = Input.get_vector("ghost left", "ghost right", "ghost up", "ghost down")
	velocity = input_direction * speed

func _physics_process(_delta):
	get_input()
	move_and_slide()
	
	for i in get_slide_collision_count():
		var collision = get_slide_collision(i)
		if collision.get_collider().is_in_group("pushable"):
			collision.get_collider().apply_central_impulse(-collision.get_normal() * 100)
	
	if velocity.x > 0:
		$AnimatedSprite2D.flip_h = false;
	if velocity.x < 0:
		$AnimatedSprite2D.flip_h = true;
		
		
