extends Area2D

var speed = 2
var player
@onready var anim = get_node("AnimationPlayer")
var velocity
var tween
func _process(delta):
	anim.play("Idle")
	player = get_node("../../Player/Player")
	tween = get_tree().create_tween()
	if self.position.x == 1050:
		tween.tween_property(self, "position", player.global_position + Vector2(-400, 200), speed)
		tween.tween_callback(queue_free)
		get_node("AnimatedSprite2D").flip_h = true
		
	elif self.position.x == 170:
		#velocity = player.global_position
		tween.tween_property(self, "position", player.global_position + Vector2(400, 200), speed)
		tween.tween_callback(queue_free)
	#velocity = player.global_position + Vector2(-300, -300)
	#global_position += velocity * 0.005
	
	
func _on_body_entered(body):
	if body.name == "Player":
		self.queue_free()
		
	if body.name == "Grounds":
		self.queue_free()
