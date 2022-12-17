extends CanvasLayer


# Declare member variables here. Examples:
# var a = 2
# var b = "text"


# Called when the node enters the scene tree for the first time.
func _ready():
	pass # Replace with function body.


# Called every frame. 'delta' is the elapsed time since the previous frame.
#func _process(delta):
#	pass


func _on_RichTextLabel2_mouse_entered():
	$Control/Balloon.visible=true
	$Control/RichTextLabel2.bbcode_text="[ghost]RESTART[/ghost]"
	 # Replace with function body.


func _on_RichTextLabel2_mouse_exited():
	$Control/Balloon.visible=false
	$Control/RichTextLabel2.bbcode_text="RESTART"


func _on_RichTextLabel3_mouse_entered():
	$Control/Balloon2.visible=true
	$Control/RichTextLabel3.bbcode_text="[ghost]QUIT[/ghost]"


func _on_RichTextLabel3_mouse_exited():
	$Control/Balloon2.visible=false
	$Control/RichTextLabel3.bbcode_text="QUIT"


func _on_RichTextLabel2_gui_input(event):
	if event is InputEventMouseButton:
		if event.pressed:
			get_tree().change_scene("res://main.tscn")


func _on_RichTextLabel3_gui_input(event):
	if event is InputEventMouseButton:
		if event.pressed:
			get_tree().quit()


func _on_Button_pressed():
	$AudioStreamPlayer.stream_paused = !$AudioStreamPlayer.stream_paused
#	pass # Replace with function body.
