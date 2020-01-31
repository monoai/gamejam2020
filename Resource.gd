extends Node2D


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

signal collected

func _ready():
	connect("collected",get_parent(),"res_collected")

func _on_Area2D_body_entered(body):
	emit_signal("collected")
	queue_free()

func set_res(type: int):
	$Sprite.set_texture(wood)
	type_index = type
