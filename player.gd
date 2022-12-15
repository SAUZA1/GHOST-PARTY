extends KinematicBody2D


export var health := 1
export var speed := 500.0

var velocity := Vector2()

onready var sprite := $Sprite


func _physics_process(delta: float) -> void:
	var input := Input.get_vector("move_left", "move_right", "move_up", "move_down")
	velocity = move_and_slide(input * speed)
	
	
