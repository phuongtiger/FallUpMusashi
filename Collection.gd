extends Node2D

var kunai = preload("res://kunai.tscn")


func _on_timer_timeout():
	var kunaiTemp = kunai.instantiate()
	kunaiTemp.position = Vector2(250, 250)
	add_child(kunaiTemp)
