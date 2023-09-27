extends Control


func _ready():
	$Label.text = "Good job!.\nYour score was "+ str(Global.score) + "."

func _on_play_pressed():
	Global.reset()
	get_tree().change_scene_to_file("res://UI/level_select.tscn")


func _on_quit_pressed():
	get_tree().quit()
