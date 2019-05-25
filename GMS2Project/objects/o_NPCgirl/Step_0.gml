event_inherited();



displayDialog = (distance_to_object(o_player) < 16);

if (!displayDialog){

	if (xStop > 60){
		sprite_index = s_NPCgirlWalk;
		x += xSpeed;
		if (!collision_line(x,y,x,y+8,o_tile,0,0,)){
			xSpeed = -xSpeed;
		}
	} else{
		sprite_index = s_NPCgirlStand;
	}
	if (xStop > 0){
		xStop --;
	} else{
		xStop = irandom(300);
		xSpeed = choose(xSpeed,-xSpeed);
	}
	if (abs(x - xStart) > xRange){
		xSpeed = -xSpeed;
	}
	image_xscale = sign(xSpeed);
} else{
	sprite_index = s_NPCgirlStand;
	image_xscale = sign(o_player.x - x);
	if (image_xscale == 0){
		image_xscale = 1;
	}
}



