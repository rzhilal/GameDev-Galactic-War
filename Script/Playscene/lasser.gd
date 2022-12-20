extends KinematicBody

var velo = Vector3()

func _physics_process(delta):
	move_and_slide(velo)
