extends Node
class_name SpawnManager

@export var tilemap_layer : TileMapLayer
@export var spawn_groups : Array[SpawnGroup]

func _ready():
	randomize()
	call_deferred("spawn_all")

func spawn_all():
	if tilemap_layer == null:
		push_error("TileMapLayer not assigned!")
		return
	for group in spawn_groups:
		spawn_group(group)

func spawn_group(group:SpawnGroup):
	if group.cells.is_empty():
		return

	if group.items.is_empty():
		return

	var available_cells = group.cells.duplicate()
	for i in group.spawn_count:
		if available_cells.is_empty():
			break

		var cell = available_cells.pick_random()
		available_cells.erase(cell)

		var scene = get_random_scene(group.items)
		if scene == null:
			continue

		var obj = scene.instantiate()
		var pos = tilemap_layer.to_global(
			tilemap_layer.map_to_local(cell)
		)
		obj.global_position = pos
		get_tree().current_scene.add_child(obj)

func get_random_scene(items:Array[SpawnItem]) -> PackedScene:
	var total_weight := 0
	for item in items:
		if item.weight <= 0:
			total_weight += 1
		else:
			total_weight += item.weight

	var roll = randf() * total_weight
	var current := 0.0
	for item in items:
		var weight = item.weight
		if weight <= 0:
			weight = 1

		current += weight
		if roll <= current:
			return item.scene
	return null		
