extends Area2D

signal hit
var health = 100
class_name turret_b

func _ready():
	pass # Replace with function body.

func _on_TurretB_body_entered(body):
	emit_signal("hit")
	if body is bullet_class:
		body.queue_free()
	if health == 0:
		queue_free()
	health -= 25
	$Health.set_text(str(health))
	pass # Replace with function body.
