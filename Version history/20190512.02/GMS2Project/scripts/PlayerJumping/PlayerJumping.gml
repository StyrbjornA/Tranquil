UpdateHorizSpeed();

ySpeed += grav;

if (!c_controls.controls[CTRL.action1Held]){
	ySpeed += grav;
}
MovePlayerX();
MovePlayerY();

//State switches
if (ySpeed > 0){
	PlayerFall();
}