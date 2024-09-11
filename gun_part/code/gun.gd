extends Node2D

enum shot_type{fully_automatically,semi_automatically};

class Gun:
	var type:shot_type;				# 射击方式
	var rate_of_fire:float;			# 射速
	var velocity:float;				# 弹速
	var gun_name:String;				# 枪械名称
	var weight:float;				# 重量
	var misalignment:float;			# 偏移
	var rate_of_exchange_of_ammunition:float;		# 换弹速度
	var magazine_for_ammunition:int;				# 弹匣大小
	var bullets_per_shot:int;					# 单次射击子弹数
	var damage:float;							# 单个子弹伤害
	var critical_hit_rate:float;					# 暴击率
	var critical_hit_multiplier:float;			# 暴击倍率
	var price:float;								# 售价
	func initialize(ini_type,ini_rate_of_fire,ini_velocity,
	ini_gun_name,ini_weight,ini_misalignment,
	ini_rate_of_exchange_of_ammunition,
	ini_critical_hit_rate,ini_critical_hit_multiplier,
	ini_magazine_for_ammunition,ini_damage,
	ini_price,
	ini_bullets_per_shot = 1) -> void:
		self.rate_of_fire = ini_rate_of_fire;
		self.gun_name = ini_gun_name;
		self.type = ini_type;
		self.velocity = ini_velocity;
		self.weight = ini_weight;
		self.misalignment = ini_misalignment;
		self.rate_of_exchange_of_ammunition = ini_rate_of_exchange_of_ammunition;
		self.magazine_for_ammunition = ini_magazine_for_ammunition;
		self.bullets_per_shot = ini_bullets_per_shot;
		self.damage = ini_damage;
		pass
	pass

var Classic:Gun;
var Shorty:Gun;
var Frenzy:Gun;
var Ghost:Gun;
var Sheriff:Gun;
var Stinger:Gun;
var Spectre:Gun;
var Bucky:Gun;
var Judge:Gun;
var Bulldog:Gun;
var Guardian:Gun;
var Phantom:Gun;
var Vanda:Gun;
var Marshal:Gun;
var Outlaw:Gun;
var Operator:Gun;
var Ares:Gun;
var Odin:Gun;


var setted:Gun;
# Called when the node enters the scene tree for the first time.
func _ready() -> void:
	Classic = Gun.new();
	Shorty = Gun.new();
	Frenzy = Gun.new();
	Ghost = Gun.new();
	Sheriff = Gun.new();
	Stinger = Gun.new();
	Spectre = Gun.new();
	Bucky = Gun.new();
	Judge = Gun.new();
	Bulldog = Gun.new();
	Guardian = Gun.new();
	Phantom = Gun.new();
	Vanda = Gun.new();
	Marshal = Gun.new();
	Outlaw = Gun.new();
	Operator = Gun.new();
	Ares = Gun.new();
	Odin = Gun.new();
	var prime_critical_rate = 0;
	var prime_critical_mutiplier = 3;
	Classic.initialize(shot_type.semi_automatically,1/6.75,1000,
							"标配手枪",6-5.73,0.4,1.75,12,
							prime_critical_rate,prime_critical_mutiplier,0,26);
	Shorty.initialize(shot_type.semi_automatically,1/3.33,1000,
							"短炮",6-5.4,4,1.75,2,
							prime_critical_rate,prime_critical_mutiplier,150,12);
	
	var node = get_node("shot");
	setted = Classic;
	node._initgun(setted);
	pass # Replace with function body.


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta: float) -> void:
	pass
