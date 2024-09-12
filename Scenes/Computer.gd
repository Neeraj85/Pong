extends CharacterBody2D
const speed = 450
var direction = 0
# Called when the node enters the scene tree for the first time.
func _ready():
	pass # Replace with function body.


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta):
	
	direction = Vector2.ZERO
	
	#The following code is for pausing the paddle's movement if it gets aligned with the ball
	if $"../Ball".position.y < position.y+ 60 && $"../Ball".position.y > position.y - 60:
		direction = Vector2.ZERO
	
	#If the position of ball is lesser than the lower corner of the paddle, then the paddle needs to move backwards.
	if $"../Ball".position.y < position.y - 60 :
		direction = Vector2(0, -1)
	
	#If the position of the ball in y axis is greater than the upper end of the paddle, then the paddle needs to move forward
	if $"../Ball".position.y > position.y + 60:
		direction = Vector2(0, 1)
		
	#With the code below, if the ball is going towards the player one, then the computer won't move
	#Computer will only move as long as the ball is coming towards it.
	if $"../Ball".velocity.x < 0:
		direction = Vector2.ZERO
	velocity = speed * direction
	position.y += velocity.y * delta
	position.y = clamp(position.y, 120, 975)

