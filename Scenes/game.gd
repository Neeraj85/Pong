extends Node2D

#Initialize the constant speed for the ball
const speed = 250
@onready var score = $AudioStreamPlayer2D

#Initialize the initial position for the ball
var initial_ball_position = Vector2(960, 588)

# Called when the node enters the scene tree for the first time.
func _ready():
	
	$MenuForAndroid.hide()
	#screen_size = get_viewport().get_visible_rect().size
	#print(screen_size)
	#var scale_factor = screen_size / reference_resolution
	#get_viewport().scale = scale_factor

# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta):
	
	#Code to display the score of player one
	$"HUD/HFlowContainer/Left Score Container/Left Score/Label".text = "Player One Score :" + str(Global.LP_Score)
	
	#Code to display the score of player two
	$"HUD/HFlowContainer/Right Score Container/Right Score/Label".text = "Player Two Score :" + str(Global.RP_Score)


func _on_left_border_body_entered(body):
	
	#Check if the body entered is ball or not
	if body == $Ball:
		
		#Play the music upon scoring point
		score.play()
		
		#Increase the score of player one when the ball enters the right side
		Global.RP_Score += 1
		
		
		
		
		#Set ball to its initial position
		$Ball.set_deferred("position", initial_ball_position)
		
		#Generate random velocity for ball when it is getting spawned again
		$Ball.velocity = speed * Vector2(randf_range(0.5, 1), randf_range(-1, 1)).normalized()
	


func _on_right_border_body_entered(body):
	
	#Check if the body entered is ball or not
	if body == $Ball:
		
		#Play the music upon scoring point
		score.play()
		
		#Increase the score of player one when the ball enters the right side
		Global.LP_Score += 1
		
		
		
		
		#Set ball to its initial position
		$Ball.set_deferred("position", initial_ball_position)
		
		#Generate random velocity for ball when it is getting spawned again
		$Ball.velocity = speed * Vector2(randf_range(-1, -0.5), randf_range(-1, 1)).normalized()
		
		


func _on_button_pressed():
	Global.open_menu()


func _on_menu_button_pressed():
	get_tree().paused = true
	$MenuForAndroid.show()
