UpdateHorizSpeed();

MovePlayerX();

//State switches
if (c_controls.controls[CTRL.action1Pressed]){
	PlayerJump();
} else if (!instance_place(x,y+1,o_tile)){
	PlayerFall();
} else if (xSpeed == 0){
	PlayerStand();
}