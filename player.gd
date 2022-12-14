extends KinematicBody2D
var playerhealth = 1
export var speed := 500.0
onready var sprite : Sprite = get_node ("Player")
var score = 0

const SPRITES_MAP := {
	
	Vector2.RIGHT: preload("res://sprites/right.png"),
	Vector2.LEFT: preload("res://sprites/left.PNG"),
	Vector2.DOWN: preload("res://sprites/front.PNG"),
	Vector2.UP: preload("res://sprites/back.PNG"),
}





var look_direction := Vector2.RIGHT

func _process(_delta: float) -> void:
	var input_vector := Vector2(
		float(Input.is_action_pressed("ui_right")) - float(Input.is_action_pressed("ui_left") )
		,
		float(Input.is_action_pressed("ui_down")) - float(Input.is_action_pressed("ui_up") )
	)
	var move_direction := input_vector.normalized()
	move_and_slide(speed * move_direction)
	
	
	if input_vector.length() > 0.0 and input_vector != look_direction:
		texture = SPRITES_MAP[input_vector]
		look_direction = input_vector
		flip_h = sign(look_direction.x) == -1.0
	
	
	
	
