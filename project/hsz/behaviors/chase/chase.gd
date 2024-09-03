extends StateNode

var character: Character = null
var detection: EnemyDetection = null

func physics_update(delta):
	if detection.player == null:
		return
	var direction = (detection.player.global_position - character.global_position).normalized()
	character.move(direction, delta)
