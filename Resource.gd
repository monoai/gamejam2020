extends Node2D

class_name resource

var res_dict = {0:"wod", 1:"Rak", 2:"brek", 3:"whet", 4:"clei", 5: "stel"}

"""
0 - wood
1 - stone
2 - brick
3 - straw
4 - clay
5 - steel
"""

var type_index = 0
var wood = preload("res://icon.png")

signal collected(type)

func _ready():
	connect("collected",get_parent(),"res_collected")
	$Sprite.texture = load("res://Assets/" + res_dict[type_index] + ".png")

func _on_Area2D_body_entered(body):
	emit_signal("collected",type_index)
	if body is player1 or body is player2:
		body.inventory[type_index] += 1
		body.update_storage()
		queue_free()

