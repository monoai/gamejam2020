extends Control


# Declare member variables here. Examples:
# var a = 2
# var b = "text"
var pick1
var pick2
var towers

# Called when the node enters the scene tree for the first time.
func _ready():
	towers = get_children()
	get_parent().get_node("SpawnTimer").start()


# Called every frame. 'delta' is the elapsed time since the previous frame.
#func _process(delta):
#	pass

func _on_SpawnTimer_timeout():
	pick1 = randi()%4
	pick2 = randi()%4 + 4
	towers[pick1].spawn_resource()
	towers[pick2].spawn_resource()
	get_parent().get_node("SpawnTimer").start()
