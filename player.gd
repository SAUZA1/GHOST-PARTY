extends KinematicBody2D
var playerhealth = 1
export var speed := 500.0
onready var sprite : Sprite = get_node ("Player")
var score = 0

#const SPRITES_MAP := {
	
#	Vector2.RIGHT: preload(""),
#	Vector2.LEFT: preload(""),
#	Vector2.DOWN: preload(""),
#	Vector2.UP: preload(""),
#}





var look_direction := Vector2.RIGHT

func _process(_delta: float) -> void:
	var input_vector := Vector2(
		float(Input.get_action_strength("ui_right")) - float(Input.get_action_strength("ui_left") )-
		float (Input.get_action_strength("ui_down")) -float(Input.get_action_strength("ui_up") )
	)
	var move_direction := input_vector.normalized()
	move_and_slide(speed * move_direction)
	
	
	if input_vector.length() > 0.0 and input_vector != Look_direction:
		texture = SPRITES_MAP[input_vector]
		look_direction = input_vector
		flip_h = sign(look_direction.x) == -1.0
	
	
	
	
