extends RigidBody2D

class_name bullet_class
#var TurretB = preload("res://TurretB.tscn").instance()

var speed = 9999
var t2 = Vector2(468.232,112.041)
const walkspeed = 154

func _ready():
	pass

"""
func _process(delta):
	var bullet = self.position
	var turretpos = TurretB.position
	turretpos = Vector2(t2)
	var motion = (bullet - turretpos).normalized()
	self.position += Vector2(4,0)
	pass
"""


func _on_TurretB_hit():
	hide()
	queue_free()
	pass # Replace with function body.
