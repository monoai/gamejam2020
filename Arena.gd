extends Node2D


func _ready():
	$Player1.connect("interact_P1",$Turrets/Tower1,"repair")
	$Player1.connect("interact_P1",$Turrets/Tower2,"repair")
	$Player1.connect("interact_P1",$Turrets/Tower3,"repair")
	$Player1.connect("interact_P1",$Turrets/Tower4,"repair")
	$Player2.connect("interact_P2",$Turrets/Tower5,"repair")
	$Player2.connect("interact_P2",$Turrets/Tower6,"repair")
	$Player2.connect("interact_P2",$Turrets/Tower7,"repair")
	$Player2.connect("interact_P2",$Turrets/Tower8,"repair")
