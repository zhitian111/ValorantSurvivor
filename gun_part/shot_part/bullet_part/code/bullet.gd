extends Node2D


var linear_velocity = 3000;
var displacement = Vector2.ZERO;
#var angular_velocity = PI;
# Called when the node enters the scene tree for the first time.


func _ready() -> void:
	self.visible = true ;
	#set_launch_direction(get_local_mouse_position())

	pass # Replace with function body.


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta: float) -> void:
	
	#rotation += angular_velocity * delta;
	displacement = Vector2.RIGHT.rotated(rotation)*linear_velocity*delta;
	position += displacement;

	pass

func set_launch_direction(clicked_point:Vector2) -> void:
	
	rotation = get_angle_to(clicked_point);
	#print("set")
	pass


func _on_visible_on_screen_notifier_2d_screen_exited() -> void:
	#print("delete")
	queue_free()
	pass # Replace with function body.
