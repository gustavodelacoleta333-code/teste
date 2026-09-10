extends Node2D
var node = preload("res://scenes/milho.tscn")

# Called when the node enters the scene tree for the first time.
func _ready() -> void:
	pass

# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta: float) -> void:
	if Input.is_action_just_pressed(" plantar_milho") and Dados.semente >=1:
		var instance = node.instantiate()
		instance.position = $player2.position
		add_child(instance)
