extends Node2D
var dooropen = false

func close_doors():
	$AnimationPlayer.play("ButtonDown")
	$AnimationPlayer.play("DoorClosed")
	dooropen = false

func _ready():
	$AnimationPlayer.play("ButtonUp")
	$AnimationPlayer.play("DoorClosed")
	
	
	
func _on_Area2D_body_entered(body):
	if body.is_in_group("Player"):
		if dooropen == false:
			dooropen = true
			$AnimationPlayer.play("ButtonDown")
			$AnimationPlayer.play("DoorOpen")
	
		
