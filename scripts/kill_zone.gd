extends Area2D



@onready var timer = $Timer


func _on_body_entered(body: CharacterBody2D) -> void:
	print("you died")
	timer.start()
	
	

func _on_timer_timeout() -> void:
	get_tree().reload_current_scene()
