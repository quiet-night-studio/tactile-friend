extends AnimatedSprite

var timeout_duration = 5  # Timeout duration in seconds
var timer

func _ready():
	# Create a Timer node
	timer = Timer.new()
	add_child(timer)
	
	# Set the Timer's wait time to the timeout duration
	timer.wait_time = timeout_duration
	
	# Connect the Timer's timeout signal to the animation change function
	timer.connect("timeout", self, "_on_timeout")

func _input(event):
	# Reset the Timer on player input
	timer.start()
	play("default")
	# Handle other player input events

func _on_timeout():
	# Change the animation to the alternative animation
	play("sleep")
