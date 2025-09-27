extends Node2D

const RIGHT = 1
const LEFT = -1

const SPEED = 60
var direction = RIGHT

@onready var ray_cast_right = $RayCastRight 
@onready var ray_cast_left = $RayCastLeft



func _process(delta):
	
	if ray_cast_right.is_colliding():
		direction = LEFT
		
	if ray_cast_left.is_colliding():
		direction = RIGHT
	
	position.x += direction * SPEED * delta
