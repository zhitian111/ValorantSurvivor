extends Node2D

var mouse_placement;

# Called when the node enters the scene tree for the first time.
func _ready() -> void:
	
	
	mouse_placement = get_viewport().get_mouse_position();
	self.position = mouse_placement;
	
	pass # Replace with function body.


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta: float) -> void:
	pass


func _input(event: InputEvent) -> void:
	if event is InputEventMouse:
		mouse_placement = get_viewport().get_mouse_position();
		self.position = mouse_placement;
	#if(event.is_action()):

	
	pass;
