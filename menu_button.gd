extends Button

@export var go_to_menu : Control 
@export var from_menu : Control

@export var reverse_animation : bool = false

func _pressed() -> void:
	var off_screen_right := get_viewport_rect().size * Vector2(1,0)
	var in_screen := Vector2.ZERO
	var off_screen_left := get_viewport_rect().size * Vector2(-1,0) 
	
	var out_position := off_screen_right if reverse_animation else off_screen_left
	var in_start_position = off_screen_left if reverse_animation else off_screen_right
	
	go_to_menu.position = in_start_position
	
	var tween_in := create_tween()
	var tween_out := create_tween()

	go_to_menu.show()
	
	tween_in.tween_property(go_to_menu, "position:x", in_screen.x, 1).set_trans(Tween.TRANS_CUBIC)
	tween_out.tween_property(from_menu, "position:x", out_position.x, 1).set_trans(Tween.TRANS_CUBIC)
	
	await tween_out.finished
	from_menu.hide()
