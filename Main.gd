extends Node2D

export (PackedScene) var Bullets

func _ready():
	pass # Replace with function body.


# Called every frame. 'delta' is the elapsed time since the previous frame.
#func _process(delta):
#	pass


func _on_ShootTimer_timeout():
	var bullet = Bullets.instance()
	add_child(bullet)
	pass # Replace with function body.
