extends Area2D

const HEALTH_INCREASE_PER_SECOND = 1.0
var showering : bool = false

func _process(delta: float) -> void:
	if showering:
		Global.get_bars().heal(delta * HEALTH_INCREASE_PER_SECOND)

func interact() -> void:
	var player : Player = Global.get_player()
	player.can_move = !player.can_move
	if player.can_move == false:
		showering = true
	else:
		showering = false
