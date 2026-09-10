extends Area2D
func _ready() -> void:
	$tomate.frame =0


func _on_body_entered(body: Node2D) -> void:
	$tomate.play("tomate")
