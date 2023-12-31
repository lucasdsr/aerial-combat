extends CharacterBody2D

@export var speed = 300

func _physics_process(delta: float) -> void:
	var directions = Vector2(Input.get_axis("move_left", "move_right"), Input.get_axis("move_up", "move_down"))
	
	velocity = directions * speed
	move_and_slide()
