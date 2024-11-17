extends Node

@onready var e: Sprite2D = $E
@onready var q: Sprite2D = $Q

func _on_body_entered(body: Node2D) -> void:
	if body.is_in_group("players"):
		e.visible = not e.visible
		q.visible = not q.visible


func _on_body_exited(body: Node2D) -> void:
	if body.is_in_group("players"):
		e.visible = not e.visible
		q.visible = not q.visible
