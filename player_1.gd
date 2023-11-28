extends StaticBody2D

const speed = 10

func _physics_process(delta):
	var vector = Vector2.ZERO
	var up = Input.is_action_pressed('p1_up')
	var down = Input.is_action_pressed('p1_down')
	if up:
		vector = Vector2.UP
	if down:
		vector = Vector2.DOWN
		
	var velocity = vector * speed
	
	move_and_collide(velocity)
