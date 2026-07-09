extends Timer

signal gameover
signal time_left_response(time: float)

var timeoutHit = false


func _on_pc_playerstationary() -> void:
	if(is_stopped() && ! timeoutHit):
		start(10)


func _on_pc_playermove() -> void:
	if(!is_stopped()):
		stop()



func _on_timeout() -> void:
	timeoutHit = true
	gameover.emit()


func _on_movement_timer_poller_timeleftpoll() -> void:
	time_left_response.emit(time_left)
