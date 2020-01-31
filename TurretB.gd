extends Area2D

const DAMAGE_1 = 5
func _ready():
	pass # Replace with function body.

func _on_TurretB_body_entered(body):
	var health = 100
	health = health - DAMAGE_1
	pass # Replace with function body.
