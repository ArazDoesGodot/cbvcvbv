extends Node2D



var enet = NetworkedMultiplayerENet.new()

var web = WebRTCMultiplayer.new()

func _ready():
	enet.create_client("2606:50c0:8000::153",2300)
	get_tree().network_peer = enet
	enet.connect("connection_succeeded",self,"waba")


func waba():
	print("e")
