extends Area2D

var perto_do_item :bool =false

func _on_body_entered(body:Node2D) -> void:
	perto_do_item = true

func _on_body_exited(body: Node2D) -> void:
	perto_do_item = false

func _input(event: InputEvent) -> void:
	if Input.is_action_just_pressed("interagir") and perto_do_item ==true:
		queue_free()
