extends KinematicBody2D

const ACCELERATION = 100
const MAX_SPEED = 750

var SPEED = 10
var center
var move = Vector2(0,0)
var displacement

onready var map_size = get_viewport().size

func _ready():
	position = Vector2(300,0)
	center = map_size/2

func _physics_process(delta):
	move = Vector2(0,0)
	if Input.is_action_pressed("ui_right"):
		move.x = 1
	elif Input.is_action_pressed("ui_left"):
		move.x = -1
	elif Input.is_action_pressed("ui_down"):
		move.y = 1
	elif Input.is_action_pressed("ui_up"):
		move.y = -1
	
	displacement = position + SPEED*move
	displacement.x = clamp(displacement.x,0,map_size.x/2)
	position = displacement.clamped(600)
	

