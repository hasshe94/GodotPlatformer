extends Node2D


func _ready():
	pass

func _process(delta):
	if Input.is_action_just_pressed("reset"):
		GameStats.reset()
		
	
	print(GameStats.get_time())
	$CanvasLayer/Control/Label.text = GameStats.get_time()
	$CanvasLayer/Control2/Label.text = GameStats.get_points()



func _on_Area2D_body_enetered(body):
	pass
