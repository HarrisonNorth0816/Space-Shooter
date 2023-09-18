extends CharacterBody2D

var inital_speed = 120.0
var health = 5
var Effects = null
var Explosion = load("res://Effects/rockExplosion.tscn")

func _ready():
	velocity = Vector2(0, inital_speed * randf()).rotated(2*PI*randf())


func _physics_process(_delta):
	move_and_slide()
	position.x = wrapf(position.x, 0, 1152)
	position.y = wrapf(position.y, 0, 648)

func damage(d):
	health -= d
	if health <= 0:
		queue_free()
	
