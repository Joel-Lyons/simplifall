extends Node2D


# Declare member variables here. Examples:
# var a = 2
# var b = "text"

var y_speed

# Called when the node enters the scene tree for the first time.
func _ready():
	y_speed = 0

# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta):
	position.y += y_speed

func _on_Area2D_area_entered(area):
	# check if area type is the same for two colliding areas
	if get_node("Area2D").area_type == area.area_type:
		queue_free()
