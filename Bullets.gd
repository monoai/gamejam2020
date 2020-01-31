extends Node

onready var TurretB = get_node("/root/Main.tscn/Main/TurretB")

func _ready():
	pass

func _physics_process(delta):
	var t = $Bullet.get_position()
	var dir = (t - TurretB.get_position()).normalized()
	$Bullet.position = dir
	pass
