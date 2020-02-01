extends Area2D

export(PackedScene) var Bullet

const DAMAGE_1 = 5
var BULL_SPEED = 1000
var target

func _ready():
	set_target()

func _on_Turret1_body_entered(body):
	var health = 100
	health = health - DAMAGE_1
	$Health.set_text(str(health))
	pass # Replace with function body.


func set_target():
	#add code here to select target
	target = get_parent().get("TurretB2")
	pass
	
func _on_ShootTimer_timeout():
	var bullet = Bullet.instance()
	bullet.position = position
	if(target!=null):
		add_child(bullet)
		bullet.position = Vector2(0,0)
		bullet.linear_velocity = Vector2(target.position - position).normalized() * BULL_SPEED
	set_target()
