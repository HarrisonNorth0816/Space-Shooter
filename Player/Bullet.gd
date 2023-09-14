extends Area2D

var speed = 20.0
var damage = 1.0
var veloctiy = Vector2.ZERO

func _ready():
	veloctiy = Vector2(0, -speed).rotated(rotation)
	


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _physics_process(_delta):
	position = position + veloctiy


func _on_body_entered(_body):
	queue_free()


func _on_timer_timeout():
	queue_free() # Replace with function body.
