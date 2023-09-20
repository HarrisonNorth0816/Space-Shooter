extends Node2D

var Asteroid = load("res://Asteriod/asteriod.tscn")
var positions = [Vector2(100, 100),Vector2(800, 100),Vector2(500, 500),Vector2(800, 500)]
var i = 0

func _physics_process(_delta):
		if get_child_count() < 0:
			var asteriod = Asteroid.instantiate()
			asteriod.position = positions[randi() % positions.size()]
			add_child(asteriod)
