extends Node2D

#variável vazia de lista para o usuário preencher
var lista1 = []
#variável de uma lista já feita
var listafeita = [1, 2, 3, 4, 5, 6, 7, 8, 9, 10]
#variável de um texto já feito
var meutexto = "Isso foi feito com uma função que retorna um texto na tela :)"
#variável para o usuário escrever seu texto
var usuario1

#lista para o usuário peencher e visualizar
func _on_botoListaUsurio_pressed():
	lista1.append($editUsuario.text)
	$ColorRect1/listaUsuario.text = String(lista1)

#lista já feita por mim que aparece ao apertar o botão
func _on_botoMinhaLista_pressed():
	$ColorRect3/minhaLista.text = String(listafeita)
	
#texto feito por mim que aparece na tela
func _ready():
	$label4.text = String(meutexto)

#para o usuário escrever um texto e poder vê-lo 
func _on_botoTexto_pressed():
	usuario1 = $editTexto.text
	$ColorRect4/textoUsuario.text = usuario1

