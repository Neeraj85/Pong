extends CanvasLayer

@export var main_menu_scene : PackedScene = preload("res://Scenes/opening_scene.tscn")

#func _on_reset_button_pressed():
	#get_tree().paused = false
	#Global.LP_Score = 0
	#Global.RP_Score = 0
	#$".".hide()
	#get_node("../Ball").set('position', Vector2(960, 588))
	#get_node("../Player").set('position', Vector2(260, 520))
	#if get_node("../Computer"):
		#get_node("../Computer").set('position', Vector2(1665, 520))
	#elif get_node("../Player Two"):
		#get_node("../Player Two").set('position', Vector2(1665, 520))
#
#func _on_main_menu_button_pressed():
	#get_tree().paused = false
	#get_tree().change_scene_to_packed(main_menu_scene)


#func _on_back_button_pressed():
	#
	#get_tree().paused = false
	#$".".hide()


func _on_reset_pressed():
	get_tree().paused = false
	Global.LP_Score = 0
	Global.RP_Score = 0
	$".".hide()
	get_node("../Ball").set('position', Vector2(960, 588))
	get_node("../Player").set('position', Vector2(260, 520))
	if get_node("../Computer"):
		get_node("../Computer").set('position', Vector2(1665, 520))
	elif get_node("../Player Two"):
		get_node("../Player Two").set('position', Vector2(1665, 520))


func _on_main_menu_pressed():
	get_tree().paused = false
	get_tree().change_scene_to_packed(main_menu_scene)


func _on_back_pressed():
	get_tree().paused = false
	$".".hide()
