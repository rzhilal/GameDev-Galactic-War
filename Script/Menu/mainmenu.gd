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


func _on_ExitButton_pressed():
		get_tree().quit()


func _on_AboutButton_pressed():
	get_tree().change_scene("res://Scene/About/About.tscn")


func _on_PlayButton_pressed():
	get_tree().change_scene("res://Scene/Play Scene/main.tscn")


func _on_HelpButton_pressed():
	get_tree().change_scene("res://Scene/Help/Help.tscn")


func _on_ShopButton_pressed():
	get_tree().change_scene("res://Scene/Shop/Shop.tscn")
