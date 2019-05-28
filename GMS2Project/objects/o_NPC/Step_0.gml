/// @description Insert description here
// You can write your code in this editor

// Inherit the parent event
event_inherited();

displayDialog = (distance_to_object(o_player) < talkDistance);

if (!displayDialog){

	if (xStop > 60){
		sprite_index = walkAnim;
		x += xSpeed;
		if (!collision_line(x,y,x,y+8,o_tile,0,0,)){
			xSpeed = -xSpeed;
		}
	} else{
		sprite_index = standAnim;
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
	sprite_index = standAnim;
	image_xscale = sign(o_player.x - x);
	if (image_xscale == 0){
		image_xscale = 1;
	}
}
