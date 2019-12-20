extends KinematicBody2D

var velocidad = 10
#var posicion = Vector2(100, 100)
const PELOTA = preload("res://Scenes/Pelota.tscn")

func _ready():
	pass
	
func _process(delta):
	pass
func _physics_process(delta):
	pass
	
func _input(event):
	if Input.is_mouse_button_pressed(1):
		var otra_pelota = PELOTA.instance()
		otra_pelota.position = position
		get_parent().add_child(otra_pelota)
	if Input.is_action_pressed("ui_right"):
		position.x += velocidad
	elif Input.is_action_pressed("ui_left"):
		position.x -= velocidad
	else:
		position.x = get_global_mouse_position().x