
if !Shrink {
	image_xscale += 0.004
	image_yscale += 0.004
	y -= 0.08
	image_speed += 0.001
	x += 0.1
} else {
	image_xscale -= 0.004 
	image_yscale -= 0.004
	y += 0.08
	image_speed -= 0.001
	x += 0.32
	
	if image_xscale <= 0.18 {
		image_alpha = 0
		var _particleSpark = part_type_create()

		part_type_shape(_particleSpark,choose(pt_shape_spark))
		part_type_size(_particleSpark,0.3,0.4,0,0)
		part_type_alpha1(_particleSpark,1)
		part_type_life(_particleSpark,10,30)		
		part_particles_create(particleSys,x,y,_particleSpark,1)
		
		}
		
	if image_xscale <= 0.15	instance_destroy()
	
}

if image_xscale >= 2.5 && image_yscale >= 2.5 {
	
	var _Brick = instance_place(x,y,oBrick) 
	instance_destroy(_Brick)
}

if image_xscale >= 3 && image_yscale >= 3 {
	image_xscale = 3 
	image_yscale = 3
	Shrink = true	
}

if image_speed >= 1 image_speed = 1
