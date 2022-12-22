extends KinematicBody


const MAXSPEED = 30
const ACCELERATION = 0.75
var inputVector = Vector3()
var velo = Vector3()
var cooldown = 0
const COOLDOWN = 8

onready var main = get_tree().current_scene

func _physics_process(delta): #function for move
	#input track (left and right)
	inputVector.x = Input.get_action_strength("ui_right") - Input.get_action_strength("ui_left")
	
	#input track (left and right)
	inputVector.y = Input.get_action_strength("ui_up") - Input.get_action_strength("ui_down")
	inputVector = inputVector.normalized()
	
	#move the spaceship
	velo.x = move_toward(velo.x, inputVector.x * MAXSPEED, ACCELERATION)
	velo.y = move_toward(velo.y, inputVector.y * MAXSPEED, ACCELERATION)
	
	rotation_degrees.z = velo.x * -2
	rotation_degrees.x = velo.y / 2
	rotation_degrees.y = -velo.x / 2
	move_and_slide(velo)
	
	#membatasi
	transform.origin.x = clamp(transform.origin.x, -15, 15)
	transform.origin.y = clamp(transform.origin.y, -10, 10)
