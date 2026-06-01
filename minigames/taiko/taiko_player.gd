extends Node2D

class_name TaikoPlayer

const speed : float = 400
const dash_speed : float = 800

func _physics_process(delta: float) -> void:
	var is_dashing : bool =  Input.is_action_pressed("ui_accept")
	var current_speed = dash_speed if is_dashing else speed
	%DashCPUParticles2D.emitting = is_dashing
	var direction = Input.get_axis("ui_left", "ui_right")
	
	position.x += direction * current_speed * delta
	position.x = clamp(position.x, 0, 1200)
