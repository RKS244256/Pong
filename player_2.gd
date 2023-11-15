extends StaticBody2D

var speed = 10

func _physics_process(delta):
	var input_dir = Vector2.ZERO
	var up = Input.is_action_pressed('p2_up')
	var down = Input.is_action_pressed('p2_down')
	if up:
		input_dir = Vector2.UP
	if down:
		input_dir = Vector2.DOWN
	var velocity = input_dir * speed
	move_and_collide(velocity)
