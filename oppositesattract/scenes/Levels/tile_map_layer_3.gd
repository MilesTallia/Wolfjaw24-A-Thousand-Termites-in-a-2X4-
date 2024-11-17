extends TileMapLayer


# Called when the node enters the scene tree for the first time.
func _ready() -> void:
	Audio.stopMusic()
	Audio.playBG()


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta: float) -> void:
	pass
