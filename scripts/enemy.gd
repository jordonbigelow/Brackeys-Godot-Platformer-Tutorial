extends Node2D

const SPEED = 40
var direction = 1

# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta: float) -> void:
	if $RayCast2DRight.is_colliding():
		$AnimatedSprite2D.flip_h = true
		direction = -1
	elif $RayCast2DLeft.is_colliding():
		$AnimatedSprite2D.flip_h = false
		direction = 1
	
	position.x += direction * SPEED * delta
