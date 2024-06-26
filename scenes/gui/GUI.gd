extends CanvasLayer


func _ready() -> void:
	add_to_group("GUI")

func update_gui_rings(rings:int) -> void:
	$Control/Panel/RingsTotal.text = str(rings)

func update_gui_wings(wings:int) -> void:
	$Control/Panel/WingsTotal.text = str(wings)

func update_gui_bombs(bombs:int) -> void:
	$Control/Panel/BombsTotal.text = str(bombs)

func update_gui_health(health:int) -> void:
	if health == 3:
		$Control/Panel/Health100.visible = true
		$Control/Panel/Health66.visible = false
		$Control/Panel/Health33.visible = false
	if health == 2:
		$Control/Panel/Health66.visible = true
		$Control/Panel/Health100.visible = false
		$Control/Panel/Health33.visible = false
	if health == 1:
		$Control/Panel/Health33.visible = true
		$Control/Panel/Health66.visible = false
		$Control/Panel/Health100.visible = false
	pass

func update_gui_goldrings(goldrings:int) -> void:
	if goldrings == 0:
		$Control/Panel/Rings_0.visible = true
		$Control/Panel/Rings_1.visible = false
		$Control/Panel/Rings_2.visible = false
		$Control/Panel/Rings_3.visible = false
	if goldrings == 1:
		$Control/Panel/Rings_1.visible = true
		$Control/Panel/Rings_0.visible = false
		$Control/Panel/Rings_2.visible = false
		$Control/Panel/Rings_3.visible = false
	if goldrings == 2:
		$Control/Panel/Rings_2.visible = true
		$Control/Panel/Rings_1.visible = false
		$Control/Panel/Rings_0.visible = false
		$Control/Panel/Rings_3.visible = false
	if goldrings == 3:
		$Control/Panel/Rings_3.visible = true
		$Control/Panel/Rings_1.visible = false
		$Control/Panel/Rings_0.visible = false
		$Control/Panel/Rings_2.visible = false
