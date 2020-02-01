extends CanvasLayer

var i = 0
var inventory
var RES_MAX = 5

func _ready():
	inventory = get_parent().inventory
	update_text()


func update_text():
	inventory = get_parent().inventory
	i = 0
	for label in get_children():
		inventory[i] = clamp(inventory[i],0,RES_MAX)
		label.set_text(str(inventory[i]) + "/" + str(RES_MAX))
		i += 1
