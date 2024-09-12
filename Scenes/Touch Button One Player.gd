extends TouchScreenButton

func _process(delta):
	if Input.is_action_pressed("Player_One"):
		Global.LP_Score = 0
		Global.RP_Score = 0
		get_tree().change_scene_to_file("res://Scenes/game.tscn")
