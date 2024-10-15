extends TextureButton


func _on_SettingsButton_pressed() -> void:
	get_tree().change_scene_to_file("res://themes/pause_menu.tscn")
