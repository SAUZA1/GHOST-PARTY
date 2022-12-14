extends Control


func _on_play_pressed():
	get_tree().change_scene("res://main scene.tscn")
	



func _on_quit_pressed():
	get_tree().quit()
