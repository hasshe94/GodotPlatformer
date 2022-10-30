extends Node

onready var music = AudioStreamPlayer.new()

var music_tracks = {
	"main":"res://sfx/music/Monkey-Drama.mp3",
}

var sound_effects = {
	"jump":"res://sfx/SoundEffects/92434750.mp3",
	"dead":"res://sfx/SoundEffects/mixkit-failure-arcade-alert-notification-240.wav",
}
	
var music_db = 1
var sound_db = 1

func change_music_db(value):
	music_db = linear2db(value)
	music.volume_db = music_db

func change_sound_db(value):
	sound_db = linear2db(value)


func _ready():
	music.stream = load(music_tracks["main"])
	add_child(music)
	music.play()

func play_sound_effect(sfx):
	var sound = AudioStreamPlayer.new()
	sound.stream = load(sound_effects[sfx])
	add_child(sound)
	sound.volume_db = sound_db
	sound.play()
	yield(sound,"finished")
	sound.queue_free()
