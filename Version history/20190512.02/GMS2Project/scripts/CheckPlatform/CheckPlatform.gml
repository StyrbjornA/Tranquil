var collision_platform = instance_place(x,y + 1,o_platform);
if (collision_platform != noone){
	
	if (bbox_bottom < collision_platform.bbox_top){		
		
		return true;
	} else{
		return false;
	}
}