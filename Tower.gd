extends Node2D

export(PackedScene) var Resource

var SPAWN_RAD = 200
var RES_MAX = 10

var rad
var deg
var res_ctr = 0
"""
0 - wood
1 - stone
2 - brick
3 - straw
4 - clay
5 - steel
"""

signal spawn(type)

func _ready():
	pass # Replace with function body.


func spawn_resource(type):
	if(res_ctr < RES_MAX):
		rad = randf()*(SPAWN_RAD-100) + 100
		deg = randf()*360
		var res = Resource.instance()
		connect("spawn",res,"set_type")
		emit_signal("spawn",type)
		res.position =  Vector2(rad*cos(deg),rad*sin(deg))
		add_child(res)
		res_ctr += 1

func res_collected():
	res_ctr -= 1

func _on_Timer_timeout():
	spawn_resource(0)
	$Timer.start()
