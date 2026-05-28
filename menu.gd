extends Control

signal play_menu
signal main_menu
signal settings_menu

#region Main
func _on_play_button_pressed() -> void:
	%Main.hide()
	%Play.show()
	play_menu.emit()

func _on_settings_button_pressed() -> void:
	%Main.hide()
	%Settings.show()
	settings_menu.emit()

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
	


func _on_play_back_button_pressed() -> void:
	%Play.hide()
	%Main.show()
	main_menu.emit()

#endregion

#region Settings
func _on_settings_back_button_pressed() -> void:
	%Settings.hide()
	%Main.show()
	main_menu.emit()
#endregion
