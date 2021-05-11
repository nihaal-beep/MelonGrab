extends Area2D
signal hit 
var speed = 400.0
var direction = Vector2.ZERO
var screen_size=Vector2.ZERO
func _ready():
	screen_size=get_viewport_rect().size



func _process(delta):
	get_input()
	position+=direction*speed*delta
	direction.x=0
	position.x=clamp(position.x,40,screen_size.x-40)
func get_input():
	if Input.is_action_pressed("ui_right"):
		direction.x=1
	if Input.is_action_pressed("ui_left"):
		direction.x=-1


func _on_Monkey_area_entered(area):
	global.score+=1


func _on_Monkey_body_entered(body):
	emit_signal("hit")
