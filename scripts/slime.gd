extends Node2D

const RIGHT = 1
const LEFT = -1

const SPEED = 60
var direction = RIGHT

@onready var ray_cast_right = $RayCastRight 
@onready var ray_cast_left = $RayCastLeft
@onready var animated_sprite = $AnimatedSprite2D


func _process(delta):
	
	if ray_cast_right.is_colliding():
		direction = LEFT
		animated_sprite.flip_h = true
		
	if ray_cast_left.is_colliding():
		direction = RIGHT
		animated_sprite.flip_h = false
	
	position.x += direction * SPEED * delta
