extends Node2D


onready var muzzle := $Muzzle # Position bullets fly out from

export var bullet : PackedScene


func _input(event):
	if event.is_action_pressed("ui_accept"):
		var new_bullet = bullet.instance()
		new_bullet.global_position = muzzle.global_position
		new_bullet.global_rotation = muzzle.global_rotation
		var level = get_parent().get_parent().get_parent()
		level.add_child(new_bullet)
