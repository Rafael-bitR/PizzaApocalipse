extends CharacterBody2D

@export var velocidade = 100.0
var alvo
var perseguindo = false

func _ready():
	alvo = get_tree().get_first_node_in_group("jogador")
	
func _physics_process(_delta):
	if perseguindo:
		var direcao = (alvo.global_position - global_position).normalized()
		velocity = direcao * velocidade
	else:
		velocity = Vector2.ZERO
	move_and_slide()


func _on_visao_body_entered(body: Node2D) -> void:
	if body.is_in_group("jogador"):
		perseguindo = true


func _on_visao_body_exited(body: Node2D) -> void:
	pass # Replace with function body.
