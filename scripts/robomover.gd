extends TileMapLayer


# Called when the node enters the scene tree for the first time.
func _ready() -> void:
	print("This was called from the ready method!")
	pass # Replace with function body.


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta: float) -> void:
	if(Input.is_action_pressed("move_left")):
		print("Moving left!")
	elif(Input.is_action_pressed("move_right")):
		print("Moving right!")
	pass
