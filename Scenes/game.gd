extends Node2D
const speed = 150
var initial_ball_position = Vector2(960, 588)
# Called when the node enters the scene tree for the first time.
func _ready():
	pass
	#screen_size = get_viewport().get_visible_rect().size
	#print(screen_size)
	#var scale_factor = screen_size / reference_resolution
	#get_viewport().scale = scale_factor

# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta):
	$"HUD/HFlowContainer/Left Score Container/Left Score/Label".text = "Player One Score :" + str(Global.LP_Score)
	$"HUD/HFlowContainer/Right Score Container/Right Score/Label".text = "Player Two Score :" + str(Global.RP_Score)


func _on_left_border_body_entered(body):
	if body == $Ball:
		Global.RP_Score += 1
		#$Ball.queue_free()
		#$Ball.queue_redraw()
		#$Ball.redirect()
		$Ball.velocity = speed * Vector2(randf_range(-1, 1), randf_range(-1, 1)).normalized()
		$Ball.set_deferred("position", initial_ball_position)
		#Global.once_again()


func _on_right_border_body_entered(body):
	if body == $Ball:
		Global.LP_Score += 1
		#$Ball.queue_free()
		#$Ball.queue_redraw()
		#Global.once_again()
		$Ball.velocity = speed * Vector2(randf_range(-1, 1), randf_range(-1, 1)).normalized()
		$Ball.set_deferred("position", initial_ball_position)
