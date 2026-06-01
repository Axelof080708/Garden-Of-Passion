extends Node2D

func reset():
	pass

func _physics_process(delta: float) -> void:
	%Label.text = "SCORE : %s" % Global.score
