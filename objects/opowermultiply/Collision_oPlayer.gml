if instance_exists(oBall) {

var _x = oBall.x
var _y = oBall.y

instance_create_layer(_x,_y,"Instances",oBall)

} 

instance_destroy()