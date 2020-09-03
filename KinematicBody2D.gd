extends KinematicBody2D

var movement = Vector2()

func _physics_process(delta):
	movement = Vector2.ZERO
	
	if Input.get_action_strength("up"):
		movement.y = -100
	elif Input.get_action_strength("down"):
		movement.y = 100
	if Input.get_action_strength("left"):
		movement.x = -100
	elif Input.get_action_strength("right"):
		movement.x = 100
	
		
	move_and_slide(movement)
	
