extends KinematicBody2D


export var speed = 300.0

var target: KinematicBody2D


func _physics_process(delta: float) -> void:
	if target:
		move_and_slide(position.direction_to(target.position) * speed)
