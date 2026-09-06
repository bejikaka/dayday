extends CharacterBody2D

@export var speed=10.0
var speedmulti=30.0

#const SPEED = 300.0



func _physics_process(delta: float) -> void:
	if Input.is_action_just_pressed("move_left") or Input.is_action_pressed("move_left"):
		Global.dir=1
	elif Input.is_action_just_pressed("move_up") or Input.is_action_pressed("move_up"):
		Global.dir=2
	elif Input.is_action_just_pressed("move_right") or Input.is_action_pressed("move_right"):
		Global.dir=3
	elif Input.is_action_just_pressed("move_down") or Input.is_action_pressed("move_down"):
		Global.dir=0
	

	# Handle jump.

	# Get the input direction and handle the movement/deceleration.
	# As good practice, you should replace UI actions with custom gameplay actions.
	var direction := Input.get_axis("move_left", "move_right")
	var direction2 := Input.get_axis("move_up", "move_down")
	if direction :
		if Input.is_action_pressed("shift") :
			velocity.x = direction * speed * speedmulti * 1.75
			Global.rwalk=1
		else :
			velocity.x = direction * speed * speedmulti
			Global.rwalk=0
	else :
		if Input.is_action_pressed("shift") :
			velocity.x = move_toward(velocity.x, 0, speed*speedmulti *1.75)
		else :
			velocity.x = move_toward(velocity.x, 0, speed*speedmulti)
	if direction2 :
		if Input.is_action_pressed("shift") :
			velocity.y = direction2 * speed * speedmulti * 1.75
			Global.rwalk=1
		else :
			velocity.y = direction2 * speed * speedmulti
			Global.rwalk=0
	else :
		if Input.is_action_pressed("shift") :
			velocity.y = move_toward(velocity.y, 0, speed*speedmulti *1.75)
		else :
			velocity.y = move_toward(velocity.y, 0, speed*speedmulti)
	if velocity.x == 0 :
		Global.rwalk=-1
	print(Global.rwalk)
	move_and_slide()
