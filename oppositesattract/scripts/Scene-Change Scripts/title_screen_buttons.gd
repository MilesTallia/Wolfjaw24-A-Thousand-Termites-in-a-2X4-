extends Control

func _on_exit_pressed() -> void:
	get_tree().quit()

func _on_credits_pressed() -> void:
	get_tree().change_scene_to_file("res://scenes/Title_Screen/credits.tscn")

func _on_instructions_pressed() -> void:
	get_tree().change_scene_to_file("res://scenes/Title_Screen/instructions.tscn")

func _on_tutorial_pressed() -> void:
	get_tree().change_scene_to_file("res://scenes/Tutorial levels/tutorial1.tscn")
