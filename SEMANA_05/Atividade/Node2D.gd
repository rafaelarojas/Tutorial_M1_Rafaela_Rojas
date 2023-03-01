extends Node2D

#variável antes não atribuída que é necessária no código
var nome
var teste = false
var valor = 0
# var número = 0 #nome de variáveis não podem ter acentuação
var numero = 0
#lista = [] #a palavra reservada var não foi atribuida, sendo assim o código não identifica lista como uma variável
var lista = []

func _on_Button_pressed():
	#Coletando dados inseridos pelo usuário 
	#número = int(LineEdit.text) #variável escrita com acento e corrigda quando atribuida e falta do cifrão no lineedit
	numero = int($LineEdit.text)
	#$LineEdit.text = nome #para atribuir um valor a uma variável ela precisa estar primeiro para receber esse valor
	nome = $LineEdit2.text #variável nome não declarada no código original


func _on_Button2_pressed():
	#Incrementando o número inserido pelo usuário
	for i in range(10):
		#Numero+=i #variável escrita com primeira letra maiúscula
		numero+=i
		#lista.append(Numero)  #variável escrita com primeira letra maiúscula
		lista.append(numero)
	#$Label.text = numero #é necessário converter o número que será colocado 
	$RichTextLabel.text = str(numero)


func _on_Button3_pressed():
	#Mudando o nome do usuário de acordo com os dados da lista
	#variáveis antes não atribuídas que são necessárias no código
	#ambas podem ser atribuídas dentro da função pois é o único lugar que elas são chamadas
	var cont = 0
	var i = 0
	#Se houver algum número ímpar o nome deve adicionar "baldo" ao final
	#while(len(lista)): #ocasiona um looping
	while(len(lista) > i): #aproveita-se var i para limitar o while
		if(lista[i]%2==1):
			cont+=1 
		i += 1
		#if(cont!=0): #erro de identação, esse if deve ficar fora de while
			#nome = nome+"baldo"
	if(cont!=0):
		nome = nome + "baldo"	
		#$Label2.text = nome #deve estar fora do while para que entenda a validação acima
	$RichTextLabel2.text = nome
		

		
