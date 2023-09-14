extends Area2D

var speed = 500.0
var damage = 1.0
var veloctiy = Vector2.ZERO

func _ready():
	veloctiy = Vector2(0, -speed).rotated(rotation)
	


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _physics_process(delta):
	position = position + veloctiy


func _on_body_entered(body):
	queue_free()
