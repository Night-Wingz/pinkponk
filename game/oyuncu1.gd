extends KinematicBody2D

export var Hiz: int  = 100

var velocity = Vector2()

func get_input():
	velocity = Vector2()
	if Input.is_action_pressed("up"):
		velocity.y -= 1
	if Input.is_action_pressed("down"):
		velocity.y += 1
	velocity = velocity.normalized() * Hiz

func _physics_process(delta):
	get_input()
	velocity = move_and_slide(velocity)
