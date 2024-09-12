extends CharacterBody2D
const speed = 450
var direction = 0
# Called when the node enters the scene tree for the first time.
func _ready():
	pass # Replace with function body.


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta):
	#pass
	direction = 0
	position.y = clamp(position.y, 105, 975)
	
	if Input.is_action_pressed("S"):
		direction = 1
	if Input.is_action_pressed("W"):
		direction = -1
		
	
	position.y += direction * speed * delta
	position.y = clamp(position.y, 120, 975)
