extends CharacterBody2D

var Bullet = load("res://Enemy/enemy_bullet.tscn")

func _on_timer_timeout():
	var Player = get_node_or_null("/root/game/Player_Container/Player")
	var Effects = get_node_or_null("/root/game/Effects")
	if Player != null and Effects != null:
		var bullet = Bullet.instantiate()
		var d = global_position.angle_to_point(Player.global_position) + PI/2
		bullet.rotation = d
		bullet.global_position = global_position + Vector2(100,-100).rotated(d)
		Effects.add_child(bullet)
		