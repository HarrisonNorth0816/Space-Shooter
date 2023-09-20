extends Control



func _on_button_pressed():
	get_tree().change_scene_to_file("res://UI/main_menu.tscn")



func _on_ms_pressed():
	get_tree().change_scene_to_file("res://levels/mercury.tscn")



func _on_vs_pressed():
	get_tree().change_scene_to_file("res://levels/venus.tscn")
