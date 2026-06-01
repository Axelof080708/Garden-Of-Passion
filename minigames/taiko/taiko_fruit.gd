extends Node2D

class_name TaikoFruit

@export var data : TaikoFruitData
func _ready() -> void:
	%Sprite2D.texture = data.texture
func _physics_process(delta: float) -> void:
	position.y += data.speed * delta



func _on_area_2d_area_entered(area: Area2D) -> void:
	if area.get_parent() is not TaikoPlayer: return
	Global.score += data.value
	queue_free()
