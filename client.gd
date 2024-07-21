extends Node2D



var enet = NetworkedMultiplayerENet.new()

func _ready():
	enet.create_client("a",2300)
	get_tree().network_peer = enet
	enet.connect("connection_succeeded",self,"waba")


func waba():
	print("e")
