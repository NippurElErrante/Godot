extends ParallaxBackground

# En el tipo Parallax se admite scroll_base_offset

func _process(delta):
	scroll_base_offset.x -=3
