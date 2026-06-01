extends Node3D

class_name MenuBackground

enum CAM_POS {ALL, BALL, DONUT}

var positions : Dictionary[CAM_POS, Node3D] = {
}

func _ready() -> void:
	positions = {
		CAM_POS.ALL : %AllNode,
		CAM_POS.BALL : %BallNode,
		CAM_POS.DONUT : %DonutNode
	}
	cam_focus(CAM_POS.ALL)

func cam_focus(pos : CAM_POS):
	get_tree().create_tween().tween_property(%Camera3D, "position", positions[pos].position, 1).set_trans(Tween.TRANS_SINE)
	get_tree().create_tween().tween_property(%Camera3D, "basis", positions[pos].basis, 1).set_trans(Tween.TRANS_SINE)


func _on_menu_main_menu() -> void:
	cam_focus(CAM_POS.ALL)


func _on_menu_play_menu() -> void:
	cam_focus(CAM_POS.BALL)


func _on_menu_settings_menu() -> void:
	cam_focus(CAM_POS.DONUT)
	
