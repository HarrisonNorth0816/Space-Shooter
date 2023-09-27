extends CharacterBody2D

var Bullet = load("res://Enemy/enemy_bullet.tscn")
var health = 10
var y_positions = [500, 550, 1100, 800]
var initial_position = Vector2.ZERO
var direction = Vector2(1.5,0)
var wobble = 30.0
var Effects = null
var Explosion = load("res://Effects/explosion.tscn")

func _physics_process(_delta):
	position += direction
	position.y = initial_position.y + sin(position.x/20) * wobble
	if position.x > Global.VP.x + 100: 
		queue_free()


func _ready():
	initial_position.x = -100
	initial_position.y = y_positions[randi() % y_positions.size()]
	position = initial_position

func _on_timer_timeout():
	var Player = get_node_or_null("/root/Game/Player_Container/Player")
	var Effects = get_node_or_null("/root/Game/Effects")
	if Player != null and Effects != null:
		var bullet = Bullet.instantiate()
		var d = global_position.angle_to_point(Player.global_position) + PI/2
		bullet.rotation = d
		bullet.global_position = global_position + Vector2(0, -100).rotated(d)
		Effects.add_child(bullet)
		

func damage(d):
	health -= d
	if health <= 0:
		$eDeath.play()
		Global.update_score(500)
		Effects = get_node_or_null("/root/Game/Effects")
		if Effects != null:
			var explosion = Explosion.instantiate()
			Effects.add_child(explosion)
			explosion.global_position = global_position
			hide()
			await explosion.animation_finished
			await $eDeath.finished
		queue_free()


func _on_area_2d_body_entered(body):
	if body.name == "Player":
		damage(100)
		body.damage(100)