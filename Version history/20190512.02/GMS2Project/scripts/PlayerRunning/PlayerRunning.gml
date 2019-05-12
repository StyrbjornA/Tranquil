UpdateHorizSpeed();

MovePlayerX();

//State switches
if (instance_place(x,y+1,o_tile)){
	grounded = true;
}
grounded = (grounded || CheckPlatform());
if (c_controls.controls[CTRL.action1Pressed]){
	PlayerJump();
} else if (!grounded){
	PlayerFall();
} else if (xSpeed == 0){
	PlayerStand();
}