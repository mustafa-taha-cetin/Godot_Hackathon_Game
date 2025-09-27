extends Area2D



@onready var timer = $Timer


func _on_body_entered(body: CharacterBody2D) -> void:
	print("you died")
	Engine.time_scale = 0.4
	timer.start()
	
	

func _on_timer_timeout() -> void:
	Engine.time_scale = 1
	get_tree().reload_current_scene()
