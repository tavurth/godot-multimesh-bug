tool
extends Polygon2D

func _ready():
	var points = PoolVector2Array()
	var size = OS.get_window_size()
	
	points.append(Vector2(0, size.y))
	points.append(Vector2(size.x, size.y))
	points.append(Vector2(size.x, 0))
	points.append(Vector2(0, 0))

	self.polygon = points
