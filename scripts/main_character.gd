extends CharacterBody2D

@export var speed = 400
@onready var gretta_sprite = $CollisionShape2D/AnimatedSprite2D

func get_input():
	var input_direction = Input.get_vector("moveLeft", "moveRight", "moveUp", "moveDown")
	velocity = input_direction * speed

func _physics_process(_delta: float) -> void:
	get_input()
	move_and_slide()


# Most Inefficient animation code in the world
func _process(_delta):
	if Input.is_action_pressed("moveDown"):
		gretta_sprite.play("Front Walking")
	else:
		gretta_sprite.play("Front Standing")
	if Input.is_action_pressed("moveUp"):
		gretta_sprite.play("Back Walking")
	else:
		gretta_sprite.play("Back Standing")
	if Input.is_action_pressed("moveLeft"):
		gretta_sprite.play("Left Walking")
	else:
		gretta_sprite.play("Left Standing")
	if Input.is_action_pressed("moveRight"):
		gretta_sprite.play("Right Walking")
	else:
		gretta_sprite.play("Right Standing")
		
