extends CharacterBody2D


@onready var anim = get_node("AnimationNinja2")


func _physics_process(delta):

	anim.play("Attack_Another")
	
	move_and_slide()

