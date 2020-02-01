extends KinematicBody2D

class_name player1

const ACCELERATION = 100
const MAX_SPEED = 750

var SPEED = 25
var center
var displacement

var RES_MAX = 5

var inventory = [0,0,0,0,0,0]

signal interact_P1


func _ready():
	position = Vector2(-300,0)
 
func _input(event):
	if event.is_action_pressed("interact1"):
		emit_signal("interact_P1")

func _physics_process(delta):
	var move = Vector2()
	if Input.is_action_pressed("right_1"):
		move.x += 1
	if Input.is_action_pressed("left_1"):
		move.x -= 1
	if Input.is_action_pressed("down_1"):
		move.y += 1
	if Input.is_action_pressed("up_1"):
		move.y -= 1
		
	if move.length() > 0:
		move = move.normalized() * SPEED * delta
	
	displacement = position + SPEED*move
	displacement.x = min(displacement.x,0)
	position = displacement.clamped(600)

func update_storage():
	for i in inventory:
			i = clamp(i,0,RES_MAX)
	$Res_Storage.update_text()
	
