extends KinematicBody2D

export var speed = 300
var velocity:Vector2 = Vector2.ZERO
var path: Array = []
var enemy: Navigation2D = null
var player = null


func _ready():
	yield(get_tree(), "idle_frame")
	var tree = get_tree()
	
	if tree.has_group("enemy"):
		enemy = tree.get_nodes_in_group("enemy")[0]
		
	if tree.has_group("player"):
		player = tree.get_nodes_in_group("player")[0]
	
func navigate():
	if path.size() > 0 :
		velocity = global_position.direction_to(path[1]) * speed
		
		if global_position == path[0]:
			path.pop_front()

func generate_path():
	if enemy!= null and player != null :
		path = enemy.get_simple_path(global_position, player.global_position, false)

func _physics_process(_delta):
	if player and enemy:
		generate_path()
		navigate()
	move()
	
func move():
	velocity = move_and_slide(velocity)
