extends Control

func _on_button_pressed():
	get_tree().change_scene_to_file("res://UI/main_menu.tscn")
func _on_ms_pressed():
	get_tree().change_scene_to_file("res://levels/mercury.tscn")
func _on_vs_pressed():
	get_tree().change_scene_to_file("res://levels/venus.tscn")
func _on_earth_pressed():
	get_tree().change_scene_to_file("res://levels/earth.tscn")
func _on_mars_pressed():
	get_tree().change_scene_to_file("res://levels/mars.tscn")
func _on_jupiter_pressed():
	get_tree().change_scene_to_file("res://levels/jupiter.tscn")
func _on_sat_pressed():
	get_tree().change_scene_to_file("res://levels/saturn.tscn")
func _on_ur_pressed():
	get_tree().change_scene_to_file("res://levels/uranus.tscn")
func _on_boss_pressed():
	get_tree().change_scene_to_file("res://levels/boss.tscn")
