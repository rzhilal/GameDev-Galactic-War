extends Spatial

onready var main = get_tree().current_scene
var Enemy = load("res://Scene/Play Scene/enemy.tscn")

func spawn():
	var enemy = Enemy.instance()
	main.add_child(enemy)
	enemy.transform.origin = transform.origin + Vector3(rand_range(-15,15), rand_range(-10,10), 0)
	if(Globals.score%500 == 0 && Globals.score != 0):
		$Timer.set_wait_time(Globals.level_spawn)
		Globals.level_spawn -= 0.05
		print(Globals.level_spawn)


func _on_Timer_timeout():
	spawn()
