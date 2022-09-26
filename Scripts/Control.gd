extends Control


func _on_QuitButton_toggled(button_pressed):
	get_tree().quit()


func _on_OptionsButton_toggled(button_pressed):
	pass 


func _on_StartButton_toggled(button_pressed):
	get_tree().change_scene("res://Scenes/World.tscn")
	
