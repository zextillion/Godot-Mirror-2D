extends Node2D
class_name SpriteFlip

# Keep sprite from "defaulting" to face a direction if _update_look_direction()
# is called with no x input
const DIRECTION_CHANGE_BUFFER = 1.0

onready var sprite : AnimatedSprite = $Sprite # Could be a regular Sprite2D or AnimatedSprite2D


func _update_look_direction(direction : Vector2) -> void:
	if direction.x >= DIRECTION_CHANGE_BUFFER: # Sprite is facing forwards (in this project, right)
		sprite.flip_h = false
	elif direction.x <= -DIRECTION_CHANGE_BUFFER: # Sprite is facing left
		sprite.flip_h = true
