extends CharacterBody2D
@export var SPEED: float = 100

func _physics_process(delta):
	
	var input_direction = Vector2(
	Input.get_action_strength("RIGHT") - Input.get_action_strength("LEFT"),
	Input.get_action_strength("DOWN") - Input.get_action_strength("UP")
	)
	velocity = input_direction * SPEED

	move_and_slide()
