extends Node2D

@onready var interação_area: InteraçãoArea = $"interação_area"


func _ready() -> void:
	interação_area.interagir = Callable(self, "interagindo")
	
func interagindo():
	print ("funcionapfv")
