var moveDir = (c_controls.controls[CTRL.rightHeld] - c_controls.controls[CTRL.leftHeld]);

if (moveDir != 0){
	xSpeed = lerp(xSpeed,moveDir*moveSpeed,runAcc);
} else{
	xSpeed = lerp(xSpeed,0,runAcc);
	if (abs(xSpeed) < 0.5){
		xSpeed = 0;
	}
}
