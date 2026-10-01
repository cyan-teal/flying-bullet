extends CPUParticles2D

func _ready() -> void:
	%ExplosionSound.volume_db = randf_range(0.75, 1.0)
	%ExplosionSound.pitch_scale = randf_range(0.75, 1.25)
	%ExplosionSound.play(0.0)
	emitting = true


func _on_explosion_sound_finished() -> void:
	queue_free()
