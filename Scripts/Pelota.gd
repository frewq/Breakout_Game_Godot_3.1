extends RigidBody2D

const ACELERAR = 4
const MAX_VELOCIDAD = 400

func _ready():
	pass

func _physics_process(delta):
	var cuerpos = get_colliding_bodies()
	
	for i in cuerpos:
		if i.collision_mask == 2:
			get_node("/root/Mundo").puntos += 5
			i.queue_free()
		
		if i.collision_mask == 1:
			var rapidez = linear_velocity.length()
			var direccion = position - get_node("../Paleta/Ancla").global_position
			var velocidad = direccion.normalized() * min(rapidez + ACELERAR, MAX_VELOCIDAD)
			set_linear_velocity(velocidad)
#			print(direccion)
	
	if position.y > get_viewport_rect().end.y:
		queue_free()
#		pass
#		print("muere")
#		get_tree().quit()