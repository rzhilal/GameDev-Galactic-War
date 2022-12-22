extends Spatial


onready var main = get_tree().current_scene
var Batu = load("res://Scene/Play Scene/batu-rintangan.tscn")

func spawn():
	var batu = Batu.instance()
	main.add_child(batu)
	batu.transform.origin = transform.origin + Vector3(rand_range(-20,20), rand_range(-15,15), 0)

func _on_Timer_timeout():
	if(Globals.score > 600):
		spawn()
