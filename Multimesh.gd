tool
extends MultiMeshInstance2D

func _ready():
	self.multimesh.set_instance_count(0)
	self.multimesh.set_color_format(MultiMesh.COLOR_FLOAT)
	self.multimesh.set_transform_format(MultiMesh.TRANSFORM_2D)
	self.multimesh.set_instance_count(100)

	self.update()
	
func update():
	var color = Color(1, 0, 0, 1)
	var size = OS.get_window_size()
	
	for index in range(100):
		var position = Transform2D()
		
		position = position.translated(
			Vector2(randi() % int(size.x), randi() % int(size.y))
		)
		
		self.multimesh.set_instance_color(index, color)
		self.multimesh.set_instance_transform_2d(index, position)
