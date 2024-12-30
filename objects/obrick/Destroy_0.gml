
	var _chanceGrow = Chance(1)
	if _chanceGrow {
		instance_create_layer(x,y,"Instances",oPowerGrow)
		}
		
	var _chanceLife = Chance(1)
	if _chanceLife {
		instance_create_layer(x,y,"Instances",oPowerExtraLife)
		}
		
		var _chanceMultiply = Chance(1)
	if _chanceMultiply {
		instance_create_layer(x,y,"Instances",oPowerMultiply)
		}	
		
		
		
				var _chanceElement = Chance(100)
	if _chanceElement {
	ElementDrop = instance_create_layer(x,y,"Instances",choose (oFirePU))
	//oEarthPU,oWaterPU
	ElementDrop.speed = 3.5
	ElementDrop.direction = 270
	
		}	