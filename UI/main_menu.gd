extends Control


func _on_play_pressed():
	get_tree().change_scene_to_file("res://UI/level_select.tscn")




func _on_quit_pressed():
	get_tree().quit()


func _on_info_pressed():
	get_tree().change_scene_to_file("res://UI/info_screen.tscn")
