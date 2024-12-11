extends CharacterBody2D

func _on_audio_stream_player_ready() -> void:
	$"../Music".play()
	
var move_speed : float = 400.0

func _physics_process(delta: float) -> void:
	
	velocity.x = 0
	velocity.y = 0
	
	if Input.is_key_pressed(KEY_LEFT):
		velocity.x -= 1
	if Input.is_key_pressed(KEY_RIGHT):
		velocity.x += 1
	if Input.is_key_pressed(KEY_UP):
		velocity.y -= 1
	if Input.is_key_pressed(KEY_DOWN):
		velocity.y += 1
	if Input.is_key_pressed(KEY_A):
		velocity.x -= 1
	if Input.is_key_pressed(KEY_D):
		velocity.x += 1
	if Input.is_key_pressed(KEY_W):
		velocity.y -= 1
	if Input.is_key_pressed(KEY_S):
		velocity.y += 1
	velocity *= move_speed
		
	move_and_slide()
