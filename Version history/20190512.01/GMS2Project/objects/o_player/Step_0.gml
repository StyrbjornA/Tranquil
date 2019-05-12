
xSpeed = (c_controls.controls[CTRL.rightHeld] - c_controls.controls[CTRL.leftHeld]) * moveSpeed;
ySpeed = (c_controls.controls[CTRL.downHeld] - c_controls.controls[CTRL.upHeld]) * moveSpeed;

if (xSpeed != 0){
	CheckCollision();
	if (xSpeed != 0){
		x += xSpeed;
	}
}
if (ySpeed != 0){
	CheckCollision();
	if (ySpeed != 0){
		y += ySpeed;
	}
}