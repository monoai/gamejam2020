extends Node2D

onready var TurretB = get_node("TurretB")

export (PackedScene) var Bullets
const walkspeed = 25

func _ready():
	pass # Replace with function body.

func _on_ShootTimer_timeout():
	pass # Replace with function body.
