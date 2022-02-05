extends RigidBody2D


func _ready():
	$AnimatedSprite.playing = true
	var mob_types = $AnimatedSprite.frames.get_animation_names()
	$AnimatedSprite.animation = mob_types[randi() % mob_types.size()]
	

func _on_Mob_body_exited(body):
	pass # Replace with function body.


func _on_VisibilityNotifier2D_screen_exited():
	queue_free()
	
