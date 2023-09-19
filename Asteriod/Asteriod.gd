extends CharacterBody2D

var inital_speed = 120.0
var health = 5
var Effects = null
var Explosion = load("res://Effects/rockExplosion.tscn")

func _ready():
	velocity = Vector2(0, inital_speed * randf()).rotated(2*PI*randf())


func _physics_process(_delta):
	move_and_slide()
	position.x = wrapf(position.x, 0, Global.VP.x)
	position.y = wrapf(position.y, 0, Global.VP.y)

func damage(d):
	health -= d
	if health <= 0:
		Global.update_score(100)
		Effects = get_node_or_null("/root/Game/Effects")
		if Effects != null:
			var explosion = Explosion.instantiate()
			Effects.add_child(explosion)
			explosion.global_position = global_position
			hide()
			await explosion.animation_finished
		queue_free()
