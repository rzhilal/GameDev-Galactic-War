extends KinematicBody

var velo = Vector3()
var KillParticles = load("res://Scene/Play Scene/KillParticles.tscn")
onready var explodeSound = $explode
onready var main = get_tree().current_scene

func _physics_process(delta):
	move_and_slide(velo)


func _on_Area_body_entered(body):	
	if body.is_in_group("enemies"):
		var particles = KillParticles.instance()
		main.add_child(particles)
		particles.transform.origin = transform.origin
		body.queue_free()
		Globals.score += 50
		explodeSound.play()
		visible = false
		$Area/CollisionShape.disabled = true


