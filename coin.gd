extends Area2D


func _on_body_entered(body: Node2D) -> void:
	var camera = get_node("../Player/Camera2D")
	camera.zoom = camera.zoom * 0.999
	
	$"../CoinSFX".play()
	body.scale.x+= 0.02
	body.scale.y+= 0.02
	body.move_speed *= 1.005



	
	
	queue_free()
	
