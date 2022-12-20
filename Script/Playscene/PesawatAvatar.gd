extends KinematicBody


const MAXSPEED = 30
const ACCELERATION = 0.75
var inputVector = Vector3()
var velo = Vector3()


func _physics_process(delta): #function for move
	#perhitungan vector benda secara horizontal
	inputVector.x = Input.get_action_strength("ui_right") - Input.get_action_strength("ui_left") 
	#perhitungan vector benda vertikal
	inputVector.x = Input.get_action_strength("ui_up") - Input.get_action_strength("ui_down") 
	inputVector = inputVector.normalized()
	velo.x = move_toward(velo.x, inputVector.x * MAXSPEED, ACCELERATION)
	velo.y = move_toward(velo.y, inputVector.y * MAXSPEED, ACCELERATION)
	rotation_degrees.z = velo.x * -2
	rotation_degrees.x = velo.y /2
	rotation_degrees.y = -velo.x /2
	move_and_slide(velo)
	transform.origin.x = clamp(transform.origin.x, -15, -15)
	transform.origin.x = clamp(transform.origin.y, -15, -15)

