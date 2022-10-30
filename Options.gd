extends MarginContainer


func _ready():
	pass


func _on_MusicSlider_value_changed(value):
	SoundPlayer.change_music_volume(value)


func _on_SfxSlider_value_changed(value):
	SoundPlayer.change_sound_volume(value)


func _on_Button_pressed():
	get_tree().change_scene("res://Scenes/MainMenu.tscn")

