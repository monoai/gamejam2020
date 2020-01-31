extends KinematicBody2D

const ACCELERATION = 100
const MAX_SPEED = 750

var SPEED = 10
var center
var move = Vector2(0,0)
var displacement

onready var map_size = get_viewport().size


func _ready():
	position = Vector2(-300,0)
	center = map_size/2
 

func _physics_process(delta):
	move = Vector2(0,0)
	if Input.is_action_pressed("right_1"):
		move.x = 1
	elif Input.is_action_pressed("left_1"):
		move.x = -1
	elif Input.is_action_pressed("down_1"):
		move.y = 1
	elif Input.is_action_pressed("up_1"):
		move.y = -1
	
	displacement = position + SPEED*move
	displacement.x = clamp(displacement.x,-map_size.x/2,0)
	position = displacement.clamped(600)
