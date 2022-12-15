extends Node2D


const Balloon := preload("res://balloon.tscn")

var level := 0


func _on_Level_timeout() -> void:
	level += 1
	$CanvasLayer/Label.text = "Level %s" % level


func _on_Balloon_timeout() -> void:
	var b := Balloon.instance()
	b.target = $YSort/Player
	$YSort.add_child(b)
