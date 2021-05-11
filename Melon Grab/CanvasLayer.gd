extends CanvasLayer
signal game_start

func score_update(score):
	$Score.text=str(score)

func show_message(text):
	$Label.text= text
	$Label.show()
	$Timer.start()

func _on_Button_pressed():
	$Button.hide()
	emit_signal('game_start')


func show_game_over():
	show_message("Game Over")
	yield($Timer,"timeout")
	show_message("Melon Grab")
	yield($Timer,"timeout")
	$Button.show()


func _on_Timer_timeout():
	$Label.hide()
