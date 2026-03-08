extends Node


var peer: WebSocketMultiplayerPeer = WebSocketMultiplayerPeer.new()


func _ready() -> void:
	print("Starting headless relay server...")
	var err = peer.create_server(12345)
	if err != OK:
		push_error("Failed to start server: %s" % err)
		return
	
	multiplayer.multiplayer_peer = peer
	print("Server running on port 12345")
	
func _process(_delta: float) -> void:
	peer.poll()
