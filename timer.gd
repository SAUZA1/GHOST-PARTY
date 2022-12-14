extends Control

var time = 0;
var timer_on = false
var playerhealth = 1
var label 
func _process(delta):
	if(timer_on):
		time+= delta;
	if playerhealth != 0:
		time += delta;
		$Label.text = "%0.1f" % time
		
	
# Called when the node enters the scene tree for the first time.
func _ready():
	label = Label.new()
	timer_on = true 
