extends Control


func _on_restart_pressed():
	Global.reset()
	get_tree().change_scene_to_file("res://levels/earth.tscn")

func _on_quit_pressed():
	get_tree().quit()
	
func _on_mm_pressed():
	get_tree().change_scene_to_file("res://UI/level_select.tscn")
