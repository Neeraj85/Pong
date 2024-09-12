extends Button


func _on_pressed():
	Global.LP_Score = 0
	Global.RP_Score = 0
	get_tree().change_scene_to_file("res://Scenes/game.tscn")
