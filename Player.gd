extends KinematicBody2D

var velocity = Vector2()
var move_speed = 360
var gravity = 1200
var jump = -360

func _physics_process(delta: float) -> void:
	var move_direction = int(Input.is_action_pressed("move_right")) - int(Input.is_action_pressed("move_left"))
	velocity.x = move_speed * move_direction
	move_and_slide(velocity)
	
	velocity.y += gravity * delta
	if Input.is_action_just_pressed("jump"):
		velocity.y = jump
