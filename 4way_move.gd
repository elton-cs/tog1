extends CharacterBody2D

@export var speed = 400

func get_input():
	var input_direction = Input.get_vector("left", "right", "up", "down")
	velocity = input_direction * speed

func _physics_process(delta):
	#get_input()
	#move_and_slide()
	var input_direction = Input.get_vector("left", "right", "up", "down")
	if input_direction.abs().x == 1 or input_direction.abs().y == 1:
		position = position + input_direction * 16
