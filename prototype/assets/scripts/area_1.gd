extends Node2D
@export var torch :Area2D
@export var torch2 :Area2D
@export var torch3 :Area2D
@export var torch4 :Area2D
@export var torch5 :Area2D
@export var torch6 :Area2D

# Called when the node enters the scene tree for the first time.
func _ready() -> void:
	torch.get_node("AnimatedSprite2D").play("fire")
	torch2.get_node("AnimatedSprite2D").play("fire")
	torch3.get_node("AnimatedSprite2D").play("fire")
	torch4.get_node("AnimatedSprite2D").play("fire")
	torch5.get_node("AnimatedSprite2D").play("fire")
	torch6.get_node("AnimatedSprite2D").play("fire")


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta: float) -> void:
	pass
