#extends SpriteFlip # Bad! Only flips sprite and nothing else!
extends MirrorNode2D

onready var animation_player : AnimationPlayer = $AnimationPlayer

export var speed := 420.0
export var rotation_speed := 90.0 # Degrees per second (counter-clockwise)
var velocity : Vector2


func _physics_process(delta):
	# Movement code
	var direction = _get_input_direction()
	velocity = direction * speed
	global_position += velocity * delta
	
	# Visual code
	if abs(velocity.x) > DIRECTION_CHANGE_BUFFER:
		animation_player.play("walk")
		set_rotation(direction.angle())
	else:
		animation_player.play("idle")
	
	# set_rotation(rotation - deg2rad(rotation_speed) * delta) # Auto-rotate code


func _get_input_direction() -> Vector2:
	var x = float(Input.is_action_pressed("ui_right")) - float(Input.is_action_pressed("ui_left"))
	var y = 0
	return Vector2(x, y)
