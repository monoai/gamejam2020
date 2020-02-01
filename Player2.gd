extends KinematicBody2D

class_name player2

const ACCELERATION = 100
const MAX_SPEED = 750

var SPEED = 25
var center
var displacement

var RES_MAX = 5

var inventory = [0,0,0,0,0,0]

signal interact_P2

func _ready():
	position = Vector2(300,0)

func _input(event):
	if event.is_action_pressed("interact2"):
		emit_signal("interact_P2")

func _physics_process(delta):
	var move = Vector2()
	if Input.is_action_pressed("ui_right"):
		move.x = 1
	if Input.is_action_pressed("ui_left"):
		move.x = -1
	if Input.is_action_pressed("ui_down"):
		move.y = 1
	if Input.is_action_pressed("ui_up"):
		move.y = -1
		
	if move.length() > 0:
		move = move.normalized() * SPEED * delta
	
	displacement = position + SPEED*move
	displacement.x = max(displacement.x,0)
	position = displacement.clamped(600)
	
func update_storage():
	for i in inventory:
			i = clamp(i,0,RES_MAX)
	$Res_Storage.update_text()
