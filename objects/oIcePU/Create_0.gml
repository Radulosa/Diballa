image_xscale = 0.1
image_yscale = 0.1

image_speed = 0.01

x = irandom_range(50,900)
y = irandom_range(1180,1300)

Shrink = false

partState = "Default"
particleSys = part_system_create()
part_system_layer(particleSys,"Clouds")
