extends RigidBody2DWrap


const STARTING_FORCE = 200
func _physics_process(delta):
	var velocity = get_linear_velocity()
	if velocity.length() > 0:  # Check to make sure the velocity isn't zero
		var angle = rad_to_deg(velocity.angle())  # Get the angle of the velocity vector
		rotation = deg_to_rad(angle + 90)  # Set the node's rotation to the velocity angle
	



func _ready():
	apply_impulse(Utility.RandomUnitVector2() * randf_range ( STARTING_FORCE/2.0, STARTING_FORCE*2.0))
		

