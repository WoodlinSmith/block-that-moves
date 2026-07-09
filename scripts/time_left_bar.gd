extends ProgressBar


# Called when the node enters the scene tree for the first time.
func _ready() -> void:
	pass # Replace with function body.


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta: float) -> void:
	pass


func _on_movement_timer_time_left_response(time: float) -> void:
	if(time == 0.0):
		value = 10.0
	else:
		value = floor(time)
	
	#draw.emit()
	pass # Replace with function body.


func _on_pc_playermove() -> void:
	value = 10.0
	pass # Replace with function body.
