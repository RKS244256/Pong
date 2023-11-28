extends Node2D

var player_1_score = 0
var player_2_score = 0

@onready var player_1_paddle = $Player_1
@onready var player_2_paddle = $Player_2
@onready var ball = $Ball

func _on_left_body_entered(body):
	if body is Ball:
		player_2_score += 1
		reset_game()
		$p2_score.text = str(player_2_score)
		print("Player 1: " + str(player_1_score) + "\nPlayer 2: " + str(player_2_score) + "\n")
	
func _on_right_body_entered(body):
	if body is Ball:
		player_1_score += 1
		reset_game()
		$p1_score.text = str(player_1_score)
		print("Player 1: " + str(player_1_score) + "\nPlayer 2: " + str(player_2_score) + "\n")
		
func _process(delta):
	if Input.is_action_pressed("quit"):
		get_tree().quit()

func reset_game():
	player_1_paddle.global_position.y = 335
	player_2_paddle.global_position.y = 335
	ball.global_position.x = 581
	ball.global_position.y = 327
	ball.velocity = Vector2.ZERO
	ball.start_ball()
