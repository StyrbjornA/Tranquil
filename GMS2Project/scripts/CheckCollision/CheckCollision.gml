//Checking horizontal collision
var collision_tile = instance_place(x + xSpeed,y,o_tile);
if (collision_tile != noone){
	
	if (sign(xSpeed) > 0){	
		var xOffset = bbox_right - x;
		x = round(collision_tile.bbox_left - xOffset)-1;
		xSpeed = 0;		
	} else if (sign(xSpeed) < 0){
		var xOffset = x - bbox_left;
		x = round(collision_tile.bbox_right + xOffset)+1;
		xSpeed = 0;
	}
	
}
//Checking vertical collision
var collision_tile = instance_place(x,y + ySpeed,o_tile);
if (collision_tile != noone){
	
	if (sign(ySpeed) > 0){		
		var yOffset = bbox_bottom - y;
		y = round(collision_tile.bbox_top - yOffset)-1;
		ySpeed = 0;
		grounded = true;
	} else if (sign(ySpeed) < 0){		
		var yOffset = y - bbox_top;
		y = round(collision_tile.bbox_bottom + yOffset)+1;
		ySpeed = 0;
		grounded = true;
	}
	 
}

var collision_platform = instance_place(x,y + ySpeed,o_platform);
if (collision_platform != noone){
	if (sign(ySpeed) > 0 && bbox_bottom < collision_platform.bbox_top){		
		var yOffset = bbox_bottom - y;
		y = round(collision_platform.bbox_top - yOffset)-1;
		ySpeed = 0;
		grounded = true;
	} 
}
