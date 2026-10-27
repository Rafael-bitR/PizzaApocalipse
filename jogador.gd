extends CharacterBody2D

@export var velocidade = 200.0

func _physics_process(_delta):
	var direcao = Input.get_vector("ui_left", "ui_right", "ui_up", "ui_down")
	velocity = velocidade * direcao
	move_and_slide()
