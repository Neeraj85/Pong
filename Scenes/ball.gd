extends CharacterBody2D

const speed = 150
@onready var direction = Vector2.ZERO
# Called when the node enters the scene tree for the first time.
func _ready():
	velocity = speed * redirect()
	#velocity = speed * direction


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _physics_process(delta):
	
	position += velocity * delta
	var collision: KinematicCollision2D = move_and_collide(velocity * delta)
	if collision:
		var reflect = collision.get_remainder().bounce(collision.get_normal())
		velocity = velocity.bounce(collision.get_normal())
		move_and_collide(reflect)
	position += velocity * delta

func redirect():
	var direction = Vector2(randf_range(-1, 1), randf_range(-1, 1)).normalized()
	return direction
