extends Control

onready var TotalCountText = $TotalCount

func _ready():
	pass
	
func _process(delta):
	TotalCountText.text = str(GameManager.TotalCount) #+ " Gems"
