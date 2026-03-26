extends Control

var current_day = 1

func _on_day_timer_timeout() -> void:
	increase_day_count()


func increase_day_count() -> void:
	current_day += 1
	$DayLabel.text = "Day " + str(current_day)
