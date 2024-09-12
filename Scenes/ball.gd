extends CharacterBody2D

@onready var collision_sound = $"Collision Sound"

const speed = 250
@onready var direction = Vector2.ZERO
# Called when the node enters the scene tree for the first time.
func _ready():
	
	#Assigning the ball random direction when the ball scene gets ready/enters the scene tree.
	velocity = speed * redirect()
	#velocity = speed * direction


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _physics_process(delta):
	
	position += velocity * delta
	

	#Code for bouncing the ball
	var collision: KinematicCollision2D = move_and_collide(velocity * delta)
	if collision:
		collision_sound.play()
		var reflect = collision.get_remainder().bounce(collision.get_normal())
		velocity = velocity.bounce(collision.get_normal())
		move_and_collide(reflect)
		
	#Code for the final movement of the ball.
	position += velocity * delta

func redirect():
	#var direction_x = Global.generated_direction.x
	direction = Vector2(randf_range(0.5, 1), randf_range(-1, 1)).normalized()
	return direction
