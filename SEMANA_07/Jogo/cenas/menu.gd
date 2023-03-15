extends Node2D

func _on_botao_play_pressed():
	get_tree().change_scene("res://cenas/play.tscn")


func _on_botao_history_pressed():
	get_tree().change_scene("res://cenas/history.tscn")
