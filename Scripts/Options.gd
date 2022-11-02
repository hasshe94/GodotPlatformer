extends MarginContainer


func _ready():
	pass


func _on_MusicSlider_value_changed(value):
	SoundPlayer.change_music_db(value)


func _on_SfxSlider_value_changed(value):
	SoundPlayer.change_sound_db(value)


func _on_Button_pressed():
	get_tree().change_scene("res://Scenes/MainMenu.tscn")



func _on_Button2_pressed():
	OS.window_fullscreen = !OS.window_fullscreen
 
