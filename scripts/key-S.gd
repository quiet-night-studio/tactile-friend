extends Sprite

var default = preload("res://assets/sprites/button/idle-key.png")
var active = preload("res://assets/sprites/button/active-key.png")

func _input(event):
#	If the key is being pressed
	if event is InputEventKey and event.pressed:
		if event.scancode == KEY_S:
			texture = active
	
	#	If the key is not being pressed
	if event is InputEventKey and !event.pressed:
		if event.scancode == KEY_S:
			texture = default
