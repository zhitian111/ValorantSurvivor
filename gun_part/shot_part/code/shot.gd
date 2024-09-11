extends Node2D

enum shot_type{fully_automatically,semi_automatically};


var scene = preload("res://gun_part/shot_part/bullet_part/bullet.tscn")
#var player_position:Vector2;
var can_shot:bool;
var shot_type_here:shot_type;
# Called when the node enters the scene tree for the first time.
var shot_status:bool;


func _ready() -> void:
	can_shot = false;
	get_node("fully_automatically_timer").stop();
	get_node("semi-automatically_timer").stop();
	pass # Replace with function body.


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta: float) -> void:
	if( can_shot == true && shot_status == true):
		if ( shot_type_here == shot_type.semi_automatically ):
			var instance = scene.instantiate();
			var node = instance
			get_node("semi-automatically_timer").start();
			can_shot = false;
			shot_status = false;
				#print(node.name)
			self.add_child(instance);
			node.set_launch_direction(get_global_mouse_position());
		if ( shot_type_here == shot_type.fully_automatically ):
			var instance = scene.instantiate();
			var node = instance
			get_node("semi-automatically_timer").start();
			can_shot = false;
			#shot_status = false;
				#print(node.name)
			self.add_child(instance);
			node.set_launch_direction(get_global_mouse_position());
	pass


func _input(event: InputEvent) -> void:
	if event is InputEventMouseButton:
		if event.is_pressed():
			shot_status = true;
		if !event.is_pressed():
			shot_status = false;
	pass

func _initgun(gun):
	if gun.type == shot_type.semi_automatically:
		var timer_node = get_node("semi-automatically_timer");
		timer_node.set_wait_time(gun.rate_of_fire);
		timer_node.start();
		shot_type_here = shot_type.semi_automatically;
		#print(gun.rate_of_fire);
	if gun.type == shot_type.fully_automatically:
		var timer_node = get_node("fully_automatically_timer");
		timer_node.set_wait_time(gun.rate_of_fire);
		timer_node.start();
		shot_type_here = shot_type.fully_automatically;
	pass	



func _on_semiautomatically_timer_timeout() -> void:
	#print("tragger");
	can_shot = true;
	get_node("semi-automatically_timer").stop();
	pass # Replace with function body.


func _on_fully_automatically_timer_timeout() -> void:
	can_shot = true;
	pass # Replace with function body.
