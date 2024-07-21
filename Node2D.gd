extends Node2D



var enet  = NetworkedMultiplayerENet.new()


func _ready():
	enet.create_server(2300)
	get_tree().network_peer = enet
