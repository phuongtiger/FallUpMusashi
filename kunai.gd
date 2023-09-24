extends Area2D

var speed = 0.01
var velocity = Vector2()
var player

func _process(delta):
	player = get_node("../../Player/Player")
	var tween = get_tree().create_tween()
	tween.tween_property(self, "position", player.global_position + Vector2(500, 200), 2)
	#tween.tween_callback(queue_free)
	#velocity = player.global_position + Vector2(-300, -300)
	#global_position += velocity * speed


func _on_body_entered(body):
	if body.name == "Player":
		self.queue_free()
