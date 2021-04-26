extends RigidBody2D


func _physics_process(_delta: float) -> void:
	var dir = Input.get_action_strength("ui_right") - Input.get_action_strength("ui_left")
	var vel = dir * 60000 
#	$wheel_F.angular_velocity = vel
#	$wheel_R.angular_velocity = vel
	
	$wheel_F.apply_torque_impulse(vel)
	$wheel_R.apply_torque_impulse(vel)
