extends KinematicBody


var spd = rand_range(20,50)

func _physics_process(delta):
	move_and_slide(Vector3(0,0,spd))
	if transform.origin.z > 10:
		queue_free()


func _on_Area_body_entered(body):
	if body.is_in_group("avatarbody"):
		body.queue_free()
		visible = false
		$Area/CollisionShape.disabled = true
