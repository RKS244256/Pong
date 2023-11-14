extends CharacterBody2D

var speed = 400

func _physics_process(delta):
	var input_dir = Vector2.ZERO
	var up = Input.is_action_pressed('ui_up')
	var down = Input.is_action_pressed('ui_down')
	if up:
		input_dir.y -= 1
	if down:
		input_dir.y += 1
	var velocity = input_dir.normalized() * speed
	move_and_collide(velocity * delta)
