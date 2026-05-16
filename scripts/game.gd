extends Control
@onready var square: Button = $square


# Called when the node enters the scene tree for the first time.
func _ready() -> void:
	pass # Replace with function body.


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta: float) -> void:
	pass


func _on_button_pressed() -> void:
	# 1. Get the width and height of the actual game window
	var window_size = get_viewport_rect().size
	
	# 2. Pick a random X and Y position within that window
	var random_x = randf_range(0, window_size.x - 128);
	var random_y = randf_range(0, window_size.y - 128);
	
	# 3. Move the square to that new position
	$square.global_position = Vector2(random_x, random_y)
