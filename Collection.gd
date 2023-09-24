extends Node2D

var kunai = preload("res://kunai.tscn")
var check = 0

func _on_timer_timeout():
	var kunaiTemp = kunai.instantiate()
	if check%2 == 0:
		kunaiTemp.position = Vector2(1050, 150)
		check += 1
	else:
		kunaiTemp.position = Vector2(170, 150)
		check += 1
	add_child(kunaiTemp)
	
