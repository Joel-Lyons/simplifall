extends Node2D


# Declare member variables here. Examples:
# var a = 2
# var b = "text"


# Called when the node enters the scene tree for the first time.
func _ready():
	pass # Replace with function body.


# Called every frame. 'delta' is the elapsed time since the previous frame.
#func _process(delta):
#	pass


func StartPressed():
#	print(Global.test)
	get_node("Start").move(Vector2(-576, 0))
	get_node("Difficulty").move(Vector2(0, 0))


func _on_Back_pressed():
	get_node("Start").move(Vector2(0, 0))
	get_node("Difficulty").move(Vector2(576, 0))


func _on_Quit_pressed():
	get_tree().quit()
