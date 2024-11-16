extends Area2D
@onready var sign_label: Label = $sign_label


func _on_body_entered(body: Node2D) -> void:
	sign_label.show()
	print("hi")

func _on_body_exited(body: Node2D) -> void:
	sign_label.hide()
