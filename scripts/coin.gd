extends Area2D


func _on_body_entered(body: Node2D) -> void:
	%"Game Manager".add_point()
	$AnimationPlayer.play("pick_up")
