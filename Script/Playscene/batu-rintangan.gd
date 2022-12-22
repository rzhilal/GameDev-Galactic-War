extends KinematicBody


var spd = rand_range(20,50)
onready var main = get_tree().current_scene

func _physics_process(delta):
	move_and_slide(Vector3(0,0,spd))
	if transform.origin.z > 10:
		queue_free()


func _on_Area_body_entered(body):
	if body.is_in_group("avatarship"):
		Globals.life -= 1
		queue_free()
		visible = false
		$Area/CollisionShape.disabled = true
		
	if Globals.life == 0:
		body.queue_free()
		visible = false
		$Area/CollisionShape.disabled = true
#		yield(get_tree().create_timer(2), "timeout")
		Globals.reset()
		get_tree().change_scene("res://Scene/GameOver.tscn")
