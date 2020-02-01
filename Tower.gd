extends Node2D

export(PackedScene) var Resource

var SPAWN_RAD = 200
var RES_MAX = 2
var active = true

var rad
var deg
var res_ctr = 0
var res_array = [0]
var repairable = false
var type

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
	add_res_type(3)
	add_res_type(5)
	
func spawn_resource():
	if(active):
		type = randi() % res_array.size()
		if(res_ctr < RES_MAX):
			rad = randf()*(SPAWN_RAD-100) + 100
			deg = randf()*360
			var res = Resource.instance()
			res.type_index = type
			res.position =  Vector2(rad*cos(deg),rad*sin(deg))
			add_child(res)
			res_ctr += 1
	

func res_collected(type):
	res_ctr -= 1


func _on_Timer_timeout():
	#spawn_resource()
	$Timer.start()

func repair():
	if(repairable):
		$Sprite.modulate = Color(0,1,0)

func _on_Area2D_body_entered(body):
	repairable = true

func _on_Area2D_body_exited(body):
	repairable = false

func add_res_type(type):
	res_array.append(type)
