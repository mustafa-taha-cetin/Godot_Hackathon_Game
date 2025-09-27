extends Area2D

func _on_body_entered(body: CharacterBody2D) -> void:
	print("1 coin")
	queue_free()
