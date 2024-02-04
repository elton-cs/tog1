extends CharacterBody2D

var currentPos = [position.x,position.y]
@export var travel_distance: int = 16

func _input(event):
	if event.is_action_pressed("up") and !test_move(transform, Vector2(0,-1)):
		currentPos[1] -= travel_distance
	elif event.is_action_pressed("down") and !test_move(transform, Vector2(0,1)):
		currentPos[1] += travel_distance
	elif event.is_action_pressed("left") and !test_move(transform, Vector2(-1,0)):
		currentPos[0] -= travel_distance
	elif event.is_action_pressed("right") and !test_move(transform, Vector2(1,0)):
		currentPos[0] += travel_distance

func _physics_process(delta):
	position = Vector2(currentPos[0], currentPos[1])
