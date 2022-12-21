extends KinematicBody


var spd = rand_range(20,50)
var KillParticles = load("res://Scene/Play Scene/KillParticles.tscn")
onready var main = get_tree().current_scene

func _physics_process(delta):
	move_and_slide(Vector3(0,0,spd))
	if transform.origin.z > 10:
		queue_free()


func _on_Area_body_entered(body):
	if body.is_in_group("avatarbody"):
		Globals.life -= 1
		var particles = KillParticles.instance()
		main.add_child(particles)
		particles.transform.origin = transform.origin
		queue_free()
		visible = false
		$Area/CollisionShape.disabled = true
		
	if Globals.life == 0:
		body.queue_free()
		visible = false
		$Area/CollisionShape.disabled = true
