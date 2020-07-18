extends ScaleInvert


export var speed := 420.0

func _physics_process(delta):
	global_position += Vector2.RIGHT.rotated(global_rotation) * speed
	set_rotation(global_rotation)
