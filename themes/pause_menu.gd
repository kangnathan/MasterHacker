extends Control




func _on_resume_pressed() -> void:
	get_tree().change_scene_to_file("res://progress_bar/testing.tscn")


func _on_restart_pressed() -> void:
	pass # Replace with function body.


func _on_quit_pressed() -> void:
	get_tree().quit()
