extends Particles2D


# Declare member variables here. Examples:
# var a = 2
# var b = "text"
var c1= Color( 0.498039, 1, 0.831373, 1 )
var c2= Color( 0.062745,0.062745,0.066667,1)
var particlesmaterial = load("res://Effects/Cloud.tres")

# Called when the node enters the scene tree for the first time.
func _ready():
	pass # Replace with function body.

func toggle_color_c1():
	print(particlesmaterial.get_color())
	particlesmaterial.set_color(c1)
	
	
func toggle_color_c2():
	print(particlesmaterial.get_color())
	particlesmaterial.set_color(c2)
	

#	print(particlesmaterial.set_color(c1))
#	if $".".color != c1:
#		$".".color = c2
#	else:
#		$".".color = c1
	
# Called every frame. 'delta' is the elapsed time since the previous frame.
#func _process(delta):
#	pass
