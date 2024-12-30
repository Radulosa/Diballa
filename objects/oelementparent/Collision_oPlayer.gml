with other {
		
if SlotLeft == 0 {
	
SlotLeft = 1
ObjLeft = other.object_index
ElementLeft = instance_create_layer(x-70,y-35,"Instances",ObjLeft)
instance_destroy(other)

}else if SlotRight == 0 {

SlotRight = 1
ObjRight = other.object_index
ElementRight = instance_create_layer(x+70,y-35,"Instances",ObjRight)
instance_destroy(other)

}
}