extends AnimatedSprite2D


# Called when the node enters the scene tree for the first time.
func _ready() -> void:
	idle()


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta: float) -> void:
	if Global.rwalk != -1 :
		if Global.rwalk==0 :
			walking()
		elif Global.rwalk == 1:
			running()
			
func idle():
	if Global.dir==0 :
		$".".play("idlefront")
	elif Global.dir==1 :
		$".".play("idleleft")
	elif Global.dir==2 :
		$".".play("idlebehind")
	else :
		$".".play("idleright")
		
func walking():
	if Global.dir==0 :
		$".".play("walkfront")
	elif Global.dir==1 :
		$".".play("walkleft")
	elif Global.dir==2 :
		$".".play("walkbackwards")
	else :
		$".".play("walkright")
		
func running():
	if Global.dir==0 :
		$".".play("runfront")
	elif Global.dir==1 :
		$".".play("runleft")
	elif Global.dir==2 :
		$".".play("runbackwards")
	else :
		$".".play("runright")
