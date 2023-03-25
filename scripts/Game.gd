extends Node2D

func _ready():
	pass


func _input(event):
	if event.is_action_pressed("keys"):
		GameManager.TotalCount += 1
		print("accepting inputs")
