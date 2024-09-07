extends CharacterBody2D
const speed = 300
var direction = 0
# Called when the node enters the scene tree for the first time.
func _ready():
	pass # Replace with function body.


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta):
	##pass
	##var balls_y_axis = $"../Ball".global_position.y
	#var balls_y_axis = $"../Ball".velocity.y
	#print(balls_y_axis)
	#direction = Vector2(0, balls_y_axis).normalized()
	##velocity.y = move_toward(0, balls_y_axis, speed)
	##print(velocity.y)
	#velocity = speed * direction
	#position.y += velocity.y * delta
	#position.y = clamp(position.y, 105, 975)
	##direction = 0
	##
	#
	direction = 0
	if Input.is_action_pressed("Down"):
		direction = 1
	if Input.is_action_pressed("Up"):
		direction = -1
	position.y += direction * speed * delta
