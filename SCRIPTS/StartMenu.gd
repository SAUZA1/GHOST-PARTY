extends CanvasLayer


# Declare member variables here. Examples:
# var a = 2
# var b = "text"
var counter=1


# Called when the node enters the scene tree for the first time.
func _ready():
	pass # Replace with function body.

func _physics_process(delta):
	pass
	
# Called every frame. 'delta' is the elapsed time since the previous frame.
#func _process(delta):
#	pass


func _on_Timer_timeout():
	$TextureButton.visible=true
	toggle_House_Sprite()
	
func toggle_House_Sprite():
	if $AnimatedSprite.animation=="Normal":
		get_tree().call_group("Cloud","toggle_color_c1")
		yield(get_tree().create_timer(1),"timeout")
		get_tree().call_group("Lightning","make_visible")
		if counter==1:
			$RichTextLabel.visible=true
			$Control.visible=true
			$BGM.playing=true
			counter=0
		$AnimatedSprite.animation="Angry"
	else:
		get_tree().call_group("Lightning","make_visible")
		get_tree().call_group("Cloud","toggle_color_c2")
		$AnimatedSprite.animation="Normal"






func _on_Label_mouse_entered():
	$Control/Balloon.visible=true
	$Control/Label.bbcode_text="[ghost]NEW GAME[/ghost]"


func _on_Label_mouse_exited():
	$Control/Balloon.visible=false
	$Control/Label.bbcode_text="NEW GAME"
	


func _on_Label2_mouse_entered():
	$Control/Balloon2.visible=true
	$Control/Label2.bbcode_text="[ghost]QUIT[/ghost]"
	


func _on_Label2_mouse_exited():
	$Control/Balloon2.visible=false
	$Control/Label2.bbcode_text="QUIT"


func _on_Label_gui_input(event):
	if event is InputEventMouseButton:
		if event.pressed:
			get_tree().change_scene("res://main.tscn")


func _on_Label2_gui_input(event):
	if event is InputEventMouseButton:
		if event.pressed:
			get_tree().quit()


func _on_TextureButton_pressed():
	$BGM.stream_paused = !$BGM.stream_paused
