extends Node2D

#setget es de buena performance
var puntos = 0 setget set_puntaje

func set_puntaje(value):
	puntos = value
	get_node("Puntaje").set_text("Puntaje: " + str(value))

func _ready():
	pass
