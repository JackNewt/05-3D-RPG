extends KinematicBody

onready var Dialogue = get_node ("/root/Game/UI/Dialogue")

var dialogue = [
	"Welcome to the Game! (Press E to Continue)",
	"Shoot the Targets I have laid out for You",
	"There were 5, but the last one was stolen by a Drone...",
	"He put it back there in the Mountains!",
	"Destroy the Targets, then Take out the Drone.",
	"Defeat them All to Win!",
	"Also there is a timer because game Difficulty."
]

func _ready():
	$AnimationPlayer.play("Idle")
	Dialogue.connect("finished_dialogue", self, "finished")


func _on_Area_body_entered(body):
	if body.name == "Player":
		Dialogue.start_dialogue(dialogue)


func _on_Area_body_exited(_body):
	Dialogue.hide_dialogue()

func finished():
	get_node("/root/Game/target_container").show()
	Global.timer = 120
	Global.update_time()
	get_node("/root/Game/UI/Timer").start()
