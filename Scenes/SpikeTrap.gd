extends Area2D


func _ready():
	$AnimationPlayer.play("Spike Trigger") 

	


func _on_SpikeTrap_body_shape_entered(body_rid, body, body_shape_index, local_shape_index):
	if body.is_in_group("Player"):
		print("player dead")
