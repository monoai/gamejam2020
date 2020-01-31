extends Node2D

export (PackedScene) var Bullets

func _ready():
	pass # Replace with function body.


# Called every frame. 'delta' is the elapsed time since the previous frame.
#func _process(delta):
#	pass


func _on_ShootTimer_timeout():
	$ShootTimer.start()
	var bullet = Bullets.instance()
	add_child(bullet)
	var speed = 5
	pass # Replace with function body.
