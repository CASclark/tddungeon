extends KinematicBody2D

var movement = Vector2()
export var speed = 100

onready var animspr = get_node("AnimatedSprite")

func _ready():
	pass
	
func _physics_process(delta):
	
	animateCharacter()
	movement =Vector2.ZERO
	
	
		
	
	if Input.is_action_pressed("up"):
		
		
		movement.y = -speed
	elif Input.is_action_pressed("down"):
		
		movement.y = speed
	
		
	if Input.is_action_pressed("left"):
		
		animspr.flip_h = true
		movement.x = -speed
	elif Input.is_action_pressed("right"):
		
		animspr.flip_h = false
		movement.x = speed
	
	
		
		
	move_and_slide(movement)
	
	
func animateCharacter():
	if (movement.x == 0 && movement.y == 0): 
		$AnimatedSprite.play("Idle")
	else:
		$AnimatedSprite.play("Run")	
		

	
