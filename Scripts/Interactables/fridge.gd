extends Area2D

const BASE_FOOD_COST: float = 10.0

func interact():
	if Global.get_stats().spend_money(BASE_FOOD_COST):
		Global.get_stats().add_fridge_stock(1)
