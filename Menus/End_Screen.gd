extends Control


func _ready():
	Input.set_mouse_mode(Input.MOUSE_MODE_VISIBLE)
	$Scored.text = "Your Score Was : " + str(Global.score)


func _on_Button_pressed():
# warning-ignore:return_value_discarded
	get_tree().change_scene("res://Menus/Main_Menu.tscn")
