extends ItemList


# Called when the node enters the scene tree for the first time.
func _ready() -> void:
	pass # Replace with function body.


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta: float) -> void:
	if(Input.is_action_just_pressed("pause")):
		visible = !visible
		get_tree().paused = !get_tree().paused
		
		print("Pause pressed!")

func _on_item_clicked(index: int, at_position: Vector2, mouse_button_index: int) -> void:
	print("In Method")
	if(index == 0):
		print("Clicked Return to Menu!")
		get_tree().paused = false
		get_tree().change_scene_to_file("res://control.tscn")
		#get_tree().change_scene_to_file("res://node_2d.tscn")
	#elif(index == 1):
		#print("Clicked Quit!")
		#get_tree().quit()
	else:
		print("I don't know what you clicked!")
