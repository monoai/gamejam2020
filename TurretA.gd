extends Node
signal hit

const DAMAGE_1 = 5

func _ready():
	if
	pass # Replace with function body.


func _on_Area2D_body_entered(body):
	var health = 100
	if emit_signal("hit"):
		health = health - DAMAGE_1
	pass # Replace with function body.
