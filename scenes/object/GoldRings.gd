extends KinematicBody

class_name GoldRing

var spd:float = 50
var variation:float = rand_range(-0.25, 0.5)
var coinrotate:float = 3
var active:bool = true

func activate() -> void:
	$AnimationPlayer.stop(true)
	active = true
	self.show()

func deactivate() -> void:
	active = false
	self.hide()

func _physics_process(_delta:float) -> void:
	if active:
		move_and_slide(Vector3(variation,variation,spd))
		rotation_degrees.y += coinrotate
		if transform.origin.z > 10:
			#queue_free()
			deactivate()


func _on_Area_area_entered(area:Area) -> void:
	if area.is_in_group("Player"):
		$AnimationPlayer.play("caught")
		#get_node("AnimationPlayer").play("caught")
