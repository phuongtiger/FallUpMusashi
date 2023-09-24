extends CharacterBody2D


@onready var anim = get_node("AnimationNinja1")


func _physics_process(delta):

	anim.play("Attack")
	
	move_and_slide()

