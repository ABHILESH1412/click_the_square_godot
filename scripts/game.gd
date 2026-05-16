extends Control
@onready var square: Button = $square
@onready var score_label: Label = $score_label

var score = 0


# Called when the node enters the scene tree for the first time.
func _ready() -> void:
	pass # Replace with function body.


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta: float) -> void:
	pass


func _on_button_pressed() -> void:
	# 1. Increase the score by 1
	score += 1
	
	# 2. Update the ScoreLabel text to show the new score
	$score_label.text = "Score: " + str(score)
	
	# 3. Pick a random X and Y position within the window
	var window_size = get_viewport_rect().size
	var random_x = randf_range(0, window_size.x - 128);
	var random_y = randf_range(0, window_size.y - 128);
	
	# 4. Move the square to that new position
	$square.global_position = Vector2(random_x, random_y)
