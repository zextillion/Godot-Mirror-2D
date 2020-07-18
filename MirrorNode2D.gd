# Handles mirroring across the y-axis
extends Node2D
class_name MirrorNode2D

# Keep sprite from "defaulting" to face a direction if _update_look_direction()
# is called with no x input
const DIRECTION_CHANGE_BUFFER = 1.0

onready var sprite : AnimatedSprite = $Sprite # Could be a regular Sprite2D or AnimatedSprite2D



func _ready():
	set_rotation(rotation)
	#set_rotation(Vector2(scale.x, 0).angle())
	#scale.x = abs(scale.x)


func set_rotation(value : float) -> void: # Overrides rotation setter
	rotation = value
	if cos(value) >= 0.0: # Facing right
		_update_look_direction(Vector2.RIGHT)
	else: # Facing left
		_update_look_direction(Vector2.LEFT)


func _update_look_direction(direction : Vector2) -> void:
	if direction.x >= DIRECTION_CHANGE_BUFFER: # Sprite is facing forwards (in this project, right)
		scale.y = abs(scale.y) # Positive value is forwards
	elif direction.x <= -DIRECTION_CHANGE_BUFFER: # Sprite is facing left
		scale.y = abs(scale.y) * -1 # Negative value is backwards
