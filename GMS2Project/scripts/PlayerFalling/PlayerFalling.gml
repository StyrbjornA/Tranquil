UpdateHorizSpeed();

ySpeed += grav;

MovePlayerX();
MovePlayerY();

//State switches
if (instance_place(x,y+1,o_tile)){
	grounded = true;
}
if (grounded){
	
	if (xSpeed == 0){
		PlayerStand();
	} else{
		PlayerRun();
	}
	
}
