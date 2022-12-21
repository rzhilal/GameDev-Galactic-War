extends Control

func _process(delta):
	if Input.is_action_pressed("escape"):
		if(visible):
			hide()
			get_tree().paused = false
		else:
			visible = true
			get_tree().paused = true
			

func _on_continue_pressed():
	hide()
	get_tree().paused = false
	
func _on_exit_menu_pressed():
	get_tree().paused = false
	get_tree().change_scene("res://Scene/Menu/mainmenu.tscn")
