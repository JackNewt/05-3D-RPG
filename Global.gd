extends Node

var timer = 0
var score = 0



func _unhandled_input(event):
	if event.is_action_pressed("menu"):
		get_tree().quit()

func update_score(s):
	score += s
	get_node("/root/Game/UI/Score").text = "Score: " + str(score)

func update_time():
	var t_m = floor(timer/60.0)
	var t_s = timer % 60
	var t = "Time: %02d" %  t_m
	t += ":%02d" % t_s
	get_node("/root/Game/UI/Time").text = t
