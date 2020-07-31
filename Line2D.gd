extends Line2D

func _ready():
	self.update()
	
func update():
	var points = PoolVector2Array()
	
	var size = OS.get_window_size()

	var xval
	for index in range(100):
		xval = 0
		xval = float(index) / 100
		xval *= size.x
		points.append(Vector2(xval, randi() % int(size.y)))

	self.set_points(points)
