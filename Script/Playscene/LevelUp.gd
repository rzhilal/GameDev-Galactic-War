extends Label



# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta):
	if(Globals.score%500 == 0 && Globals.score != 0):
		visible = true
		yield(get_tree().create_timer(3), "timeout")
		visible = false
		Globals.level_increasing = false
