extends Node

const DAMAGE_1 = 5

func _ready():
	pass # Replace with function body.

func _on_Turret1_body_entered(body):
	var health = 100
	health = health - DAMAGE_1
	$Health.set_text(health)
	pass # Replace with function body.


func _on_ShootTimer_timeout():
	pass # Replace with function body.
