extends Node2D

var lista1 = []
var listafeita = [1, 2, 3, 4, 5, 6, 7, 8, 9, 10]
var meutexto = "Isso foi feito com uma função que retorna um texto na tela :)"
var usuario

func _on_botoListaUsurio_pressed():
	lista1.append($editUsuario.text)
	$ColorRect1/listaUsuario.text = String(lista1)


func _on_botoMinhaLista_pressed():
	$ColorRect2/minhaLista.text = String(listafeita)
	
func _ready():
	$label4.text = String(meutexto)



func _on_botoTexto_pressed():
	usuario = $editTexto.text
	$ColorRect4/textoUsuario.text = usuario
