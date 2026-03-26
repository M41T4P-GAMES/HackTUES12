extends PanelContainer

const WATER_COST = 10
const ELECTRICITY_COST = 20

var water_total = 0.0
var electricity_total = 0.0
var total = 0.0

func _ready() -> void:
	hide()


func calculate(water_used, elec_used) -> void:
	water_total = water_used * WATER_COST
	electricity_total = elec_used * ELECTRICITY_COST
	total = water_total + electricity_total
	
	%ElectricityAmount.text = "€" + str(electricity_total)
	%WaterAmount.text = "€" + str(water_total)
	%TotalAmount.text = "€" + str(total)
