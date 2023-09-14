extends CharacterBody2D

var speed = 5 
var maxSpeed = 1000
var rotateSpeed = 0.1
var Bullet = load("res://Player/bullet.tscn")
var nose = Vector2(0, -60)

func get_input():
	var to_return = Vector2.ZERO
	$Exhaust.hide()
	if Input.is_action_pressed("Forward"):
		to_return += Vector2(0,-1)
		$Exhaust.show()
	if Input.is_action_pressed("Left"):
		rotation -= rotateSpeed
	if Input.is_action_pressed("Right"):
		rotation += rotateSpeed
	return to_return.rotated(rotation) 


func _physics_process(delta):
	velocity += get_input()*speed
	velocity = velocity.normalized() * clamp(velocity.length(), 0, maxSpeed)
	
	position.x = wrapf(position.x, 0, 1152)
	position.y = wrapf(position.y, 0, 648)
	velocity = velocity.normalized() * clamp(velocity.length(), 0, maxSpeed)
	move_and_slide()
	
	if Input.is_action_just_pressed("Shoot"):
		var bullet = Bullet.instantiate()
		Bullet.position = position + nose.rotated(rotation)
		Bullet.rotation = rotation
		var Effects = get_node_or_null("/root/Game/Effects")
		if Effects != null:
			Effects.add_child(bullet)
	
