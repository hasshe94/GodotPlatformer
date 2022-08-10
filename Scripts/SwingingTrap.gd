extends Node2D

func _ready():
	$AnimationPlayer.play("Swing")




#manually input the inspector/node thing if code will be used again below

func _on_Area2D_body_entered(body):
	if body.is_in_ground("Player"):
		print("player dead")
		if GameStats.check_reset() ==  false:
			body.global_position = GameStats.get_spawn().global_position

	
