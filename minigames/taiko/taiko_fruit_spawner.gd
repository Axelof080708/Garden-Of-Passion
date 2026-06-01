extends Node2D

@export_file("*.tscn") var TAIKO_FRUIT
@export var fruit_dict : Dictionary[FRUIT_TYPE, TaikoFruitData]

enum FRUIT_TYPE {DEFAULT}

func spawn_fruit(fruit_type : FRUIT_TYPE, spawn_pos : float):
	var fruit_scene : PackedScene = load(TAIKO_FRUIT)
	var fruit : TaikoFruit = fruit_scene.instantiate()
	
	if !fruit_dict.is_empty():
		fruit.data = fruit_dict[fruit_type]
	else:
		fruit.data = TaikoFruitData.new()
	
	fruit.position.x = spawn_pos
	fruit.position.y = 0
	
	add_child(fruit)


func _on_timer_timeout() -> void:
	var rdm = RandomNumberGenerator.new()
	spawn_fruit(rdm.randi_range(0, FRUIT_TYPE.size() - 1), rdm.randf_range(0,1200))
	%Timer.start()
