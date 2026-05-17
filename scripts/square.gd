extends Area2D
var score: int = 0
@onready var score_label: Label = $"../score_label"


func _on_input_event(viewport: Node, event: InputEvent, shape_idx: int) -> void:
	# Check if the event is a mouse button press and if it's the LEFT click
	if event is InputEventMouseButton and event.pressed and event.button_index == MOUSE_BUTTON_LEFT:
		score += 1
		score_label.text = "Score: " + str(score)
		
		# 1. Get the size of the game window
		var window_size = get_viewport_rect().size
		
		# 2. Pick a random position
		# (Godot icon is 128x128. Because Area2D positions are calculated from the CENTER of the sprite,
		# we keep it 64 pixels away from the edges so it doesn't clip out of bounds)
		var random_x = randf_range(64, window_size.x - 64)
		var random_y = randf_range(64, window_size.y - 64)
		
		# 3. Move the Area2D square to the new position
		position = Vector2(random_x, random_y)
		#$square.position = Vector2(random_x, random_y)
