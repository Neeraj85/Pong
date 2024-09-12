extends Node

#Preload and instantiate the ball scene, so that it can be added as a child later on.
#var ball = preload("res://Scenes/ball.tscn").instantiate()

#var One_Player_Game :PackedScene = preload("res://Scenes/game.tscn").instantiate()
#var Two_Player_Game = preload("res://Scenes/Two Player.tscn").instantiate()
#Set the score of player two as zero.
var RP_Score : int = 0

var generated_direction = Vector2.ZERO
#Set the score of player one as zero.
var LP_Score : int = 0
#@onready var LLable = $"Game/HUD/HFlowContainer/Left Score Container/Left Score/Label"
#@onready var RLable = $"Game/HUD/HFlowContainer/Right Score Container/Right Score/Label"

#Function to add the ball scene once any player scores a point
#func once_again():
	
	#function to add the ball scene as a child of the main scene
	#get_tree().current_scene.add_child(ball)

func _process(delta):
	pass
	#if LLable and RLable :
		#LLable.text = "Player One Score: " + str(LP_Score)
		#RLable.text = "Player Two Score: " + str(RP_Score)

#Function called from the menu screen for loading one player game.
func load_one_player_game():

	#Loading the scene for one player game
	get_tree().change_scene_to_file("res://scenes/game.tscn")

#function called from the menu screen for loading two player game
func load_two_player_game():
	
	#Loading the scene for two player games
	print("I am getting called.")
	get_tree().change_scene_to_file("res://scenes/Two Player.tscn")

func generate_right_direction():
	generated_direction = randf_range(0.5, 1)

func generate_left_direction():
	generated_direction = randf_range(-1, -0.5)

#func open_menu():
	
