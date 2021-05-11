extends Area2D


func _process(delta):
	position.y+=delta*200



func _on_Watermelon_area_entered(area):
	
	queue_free()
