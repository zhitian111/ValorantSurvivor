extends Node2D



var player_position:Vector2;

# Called when the node enters the scene tree for the first time.
func _ready() -> void:
	self.player_position = get_viewport_rect().size;
	position.x=player_position.x/2;
	position.y=player_position.y/2;
	pass # Replace with function body.


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta: float) -> void:
	pass
