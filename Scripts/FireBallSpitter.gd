extends Node2D
onready var fireball = $FireBall
export (int) var fireball_speed = 200

func _process(delta):
	fireball.translate(Vector2.LEFT *fireball_speed * delta)


func _on_FireBallEnd_area_entered(area):
	if area == fireball:
		fireball.global_position = $SpitterSprite/Position2D.global_position
