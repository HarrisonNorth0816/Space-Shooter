extends CharacterBody2D

var speed = 5 
var maxSpeed = 1000
var rotateSpeed = 0.1



func _physics_process(delta):
	if Input.is_action_pressed("Left"):
		rotation = rotation - rotateSpeed
	if Input.is_action_pressed("Right"):
		rotation = rotation + rotateSpeed
	if Input.is_action_pressed("Forward"):
		velocity = velocity + Vector2(0, -speed).rotated(rotation)
	
	position.x = wrapf(position.x, 0, 1152)
	position.y = wrapf(position.y, 0, 648)
	velocity = velocity.normalized() * clamp(velocity.length(), 0, maxSpeed)
	move_and_slide()
	
