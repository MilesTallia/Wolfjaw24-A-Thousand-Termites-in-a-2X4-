extends Control

func _on_back_pressed() -> void:
	get_tree().change_scene_to_file("res://scenes/Title_Screen/title_screen.tscn")


func _on_miles_pressed() -> void:
	OS.shell_open("https://www.linkedin.com/in/miles-tallia/")


func _on_gabriel_pressed() -> void:
	OS.shell_open("https://www.linkedin.com/in/gabriel-williams-17a400272/")


func _on_andrew_pressed() -> void:
	OS.shell_open("https://www.linkedin.com/in/andrew-dimauro-765565311/")


func _on_luke_pressed() -> void:
	OS.shell_open("https://github.com/lhs3913")


func _on_kyle_pressed() -> void:
	OS.shell_open("https://www.linkedin.com/in/kyle-owen-42346b25b/")
