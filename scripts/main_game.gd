extends Node2D

var floor_scene = preload("res://Scenes/floor.tscn")
# Called when the node enters the scene tree for the first time.
func _ready() -> void:
	pass # Replace with function body.


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta: float) -> void:
	pass




func _on_button_pressed() -> void:
	get_tree().paused = false
	get_tree().change_scene_to_file("res://Scenes/control.tscn")
	pass # Replace with function body.


func _on_movement_timer_gameover() -> void:
	get_tree().paused = true


func _on_floor_endofroad(pos: Vector2) -> void:
	var floor_add = floor_scene.instantiate()
	var pos_offset = pos
	pos_offset.x+=1000
	
	
	floor_add.endofroad.connect(_on_floor_endofroad,ConnectFlags.CONNECT_DEFERRED)

	get_tree().root.add_child(floor_add)
	floor_add.global_position = pos_offset
	
