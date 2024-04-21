extends RigidBody2DWrap


var rotation_speed = TAU
var walk_speed = 400
signal has_died


func _physics_process(delta):
	angular_velocity = 0
	if Input.is_action_pressed("rotate_cw"):
		angular_velocity = rotation_speed
	if Input.is_action_pressed("rotate_ccw"):
		angular_velocity = -rotation_speed
	if Input.is_action_pressed("thrust_forward"):
		apply_force( Vector2.UP.rotated( rotation) * walk_speed )
		
		



		


func _on_body_entered(body):
	print(body.name)
	print("Death by " + body.name)
	has_died.emit()
	pass # Replace with function body.
