extends Node2D

@onready var interação_area: InteraçãoArea = $"interação_area"

const Lines: Array[String] = [
	"Me mata pfv aaaaaa"
]

func _ready() -> void:
	interação_area.interagir = Callable(self, "interagindo")
	
func interagindo():
	Gerentedialogo.inicia_dialogo(global_position, Lines)
	await Gerentedialogo.dialogo_acaba
