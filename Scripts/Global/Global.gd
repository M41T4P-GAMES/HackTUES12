extends Node

func get_stats() -> Node:
	return get_tree().current_scene.find_child("Stats")


func get_player() -> Player:
	return get_tree().current_scene.find_child("Player")
