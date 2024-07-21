extends Node2D



var enet  = NetworkedMultiplayerENet.new()


func _ready():
	enet.create_server(2300)
	get_tree().network_peer = enet

func _physics_process(delta):
	$Label.text = str(IP.get_local_addresses())
