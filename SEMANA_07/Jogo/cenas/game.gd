extends Node2D

var dentro = false
var texto = ["Olá!" , #emma0
"Olá! Você por acaso viu um coelho roxo por ai?", #emma1
"Ele atende por Lino", #emma2
"É meu coelhinho, não vivo sem ele" , #emma3
"Olá minha cara! Meu nome é Luke" , #luke4
"Coelho roxo...?", #luke5
"A claro! A criatura mágica!", #luke6
"Criatura mágica?", #emma7
"A sim, não posso dar mais detalhes sobre isso!", #luke8
"Você terá que encontra-lo, para isso terá que se aventurar na floresta assombrada", #luke9
"A mas não se preocupe minha jovem, ela não é tão assombrada assim, Estarei aqui caso precise, e lembre-se, você achará o Lino!", #luke10
"Boa sorte! Estarei aqui caso precise, e lembre-se, você achará o Lino!" #luke11

 ]

#var running = true

#Array que contém o texto
var index = 0 #variável que itera os elementos na lista
#var input = 0 #variável que conta quantas vezes apertou "Enter"
func tamanho_elemento(array_element):
	var cont = 0
	for elem in array_element:
		cont += 1
	return(cont)
	

func _ready():
	$dialogoEmma/caixaDialogo/textodialogo.text = texto[index]
	$raposa/sprite1.hide()
	$raposa/sprite2.hide()
	$raposa/ENTER.hide()
	$dialogoEmma.hide()
	$dialogoEmma/rostoEmma.hide()
	$dialogoEmma/rostoLuke.hide()

func _on_Area2D_body_entered(body):
	$raposa/sprite1.show()
	$raposa/sprite2.show()
	$raposa/ENTER.show()
	dentro = true
	
func _on_Area2D_body_exited(body):
	$raposa/sprite1.hide()
	$raposa/sprite2.hide()
	$raposa/ENTER.hide()
	dentro = false
	
func dialogo():
	if dentro == true and Input.is_action_just_pressed("ui_accept"):
		$dialogoEmma.show()
		 # texto do label = primeiro elemento da lista
		return(true)
	else:
		return(false)
	

func _process(delta):
	if dialogo() == true:
		$dialogoEmma/caixaDialogo/textodialogo.show()
	if $dialogoEmma/caixaDialogo/textodialogo.visible_characters < $dialogoEmma/caixaDialogo/textodialogo.get_total_character_count(): # se caracteres visíveis < total de caracteres
			$dialogoEmma/caixaDialogo/textodialogo.visible_characters += 1 # adicionando caracteres visíveis
			
	else: # se caracteres visíveis = total de caracteres
		if index == 12 and Input.is_action_just_pressed("ui_accept") and $dialogoEmma/caixaDialogo/textodialogo.visible_characters == tamanho_elemento(texto[index]):
			index += 1
				
		elif index + 1 < texto.size() and Input.is_action_just_pressed("ui_accept"):
			$dialogoEmma/caixaDialogo/textodialogo.text = texto[index + 1]
			$dialogoEmma/caixaDialogo/textodialogo.visible_characters = 0
			index += 1 #adicionando (se possível) mais texto ao label ao apertar "Enter" e aumentando o index para iterar
						   # o próximo elemento da lista
				
						
		elif index < texto.size() and Input.is_action_just_pressed("ui_accept") and $dialogoEmma/caixaDialogo/textodialogo.text != texto[index]:
			$dialogoEmma/caixaDialogo/textodialogo.text = texto[index]
			$dialogoEmma/caixaDialogo/textodialogo.visible_characters = 0
			index += 1
				
				
	if Input.is_action_just_pressed("ui_accept"):
		$dialogoEmma/caixaDialogo/textodialogo.visible_characters = $dialogoEmma/caixaDialogo/textodialogo.get_total_character_count() #mostrando texto inteiro
			
	if index < 4:
		$dialogoEmma/rostoEmma.show()
		$dialogoEmma/rostoLuke.hide()
		$dialogoEmma/caixaDialogo/emma.show()
		$dialogoEmma/caixaDialogo/luke.hide()
		
	elif index < 7:
		$dialogoEmma/rostoLuke.show()
		$dialogoEmma/rostoEmma.hide()
		$dialogoEmma/caixaDialogo/luke.show()
		$dialogoEmma/caixaDialogo/emma.hide()
	
	elif index == 7:
		$dialogoEmma/rostoEmma.show()
		$dialogoEmma/rostoLuke.hide()
		$dialogoEmma/caixaDialogo/emma.show()
		$dialogoEmma/caixaDialogo/luke.hide()
		
	elif index < 13:
		$dialogoEmma/rostoLuke.show()
		$dialogoEmma/rostoEmma.hide()
		$dialogoEmma/caixaDialogo/luke.show()
		$dialogoEmma/caixaDialogo/emma.hide()
			
	if index == 11 and Input.is_action_just_pressed("ui_accept"):
		$dialogoEmma.hide()
		$dialogoEmma/rostoEmma.hide()
		$dialogoEmma/rostoLuke.hide()
		$dialogoEmma/caixaDialogo/luke.hide()
		$dialogoEmma/caixaDialogo/emma.hide()
			
		
				

	

