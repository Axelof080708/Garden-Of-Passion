extends Control


#region Main

func _on_credits_button_pressed() -> void:
	print("Template made by : Axelof080708")

func _on_quit_button_pressed() -> void:
	get_tree().quit()
#endregion

#region Play
func _on_new_game_button_pressed() -> void:
	print("Launching new game...")

func _on_load_button_pressed() -> void:
	print("Loading game...")

func _on_chapiter_button_pressed() -> void:
	print("Loading chapiter...")

#endregion


func _on_taiko_minigame_button_pressed() -> void:
	get_tree().change_scene_to_file("res://minigames/taiko/taiko_minigame.tscn")
