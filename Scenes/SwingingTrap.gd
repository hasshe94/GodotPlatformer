extends Node2D



func _on_Area2D_body_enetered(body):
	if body.is_in_groups("Player"):
		print("Player Dead")
		
