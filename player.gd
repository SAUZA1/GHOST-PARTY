extends KinematicBody2D

var playerhealth = 1
var speed = 500
var velocity : Vector2 = Vector2()
onready var sprite : Sprite = get_node ("Suz")
var score = 0

func _physics_process(_delta):
	velocity.x = 0
	velocity.y = 0
	if Input.is_action_pressed("ui_left"):
		velocity.x -= speed
	if Input.is_action_pressed("ui_right"):
		velocity.x += speed
	if Input.is_action_pressed("ui_down"):
		velocity.y += speed
	if Input.is_action_pressed("ui_up"):
		velocity.y -= speed
	
	velocity = move_and_slide(velocity, Vector2.UP)
