extends Area2D

var speed = Vector2(200,0)

func _process(delta):
	position += speed.rotated(rotation) * delta






func _on_Top_body_entered(body):
	rotation = -rotation
	speed = -speed
	rotation_degrees += rand_range(90,-90)
