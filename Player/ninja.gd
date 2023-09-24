extends CharacterBody2D


@onready var anim = get_node("AnimationPlayer")


func _physics_process(delta):

	anim.play("Attack")
	
	move_and_slide()

