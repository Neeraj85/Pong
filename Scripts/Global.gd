extends Node
var ball = preload("res://Scenes/ball.tscn")
var RP_Score : int = 0
var LP_Score : int = 0
#@onready var LLable = $"Game/HUD/HFlowContainer/Left Score Container/Left Score/Label"
#@onready var RLable = $"Game/HUD/HFlowContainer/Right Score Container/Right Score/Label"
func once_again():
	get_tree().current_scene.add_child(ball)

func _process(delta):
	pass
	#if LLable and RLable :
		#LLable.text = "Player One Score: " + str(LP_Score)
		#RLable.text = "Player Two Score: " + str(RP_Score)

func load_one_player_game():
	get_tree().change_scene_to_file("res://scenes/game.tscn")

func load_two_player_game():
	get_tree().change_scene_to_file("res://scenes/Two Player.tscn")
