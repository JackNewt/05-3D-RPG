extends Control


func _ready():
	 Input.set_mouse_mode(Input.MOUSE_MODE_VISIBLE)


func _on_Play_pressed():
# warning-ignore:return_value_discarded
	get_tree().change_scene("res://Levels/Level1.tscn")


func _on_Quit_pressed():
	get_tree().quit()
