if (life > 0){
	life --;
	x += xSpeed;
	xSpeed += xAcc;
	y += ySpeed;
	ySpeed += yAcc;
	if (flashing){
		if (visible){
			visible = false;
		} else{
			visible = true;
		}
	}
} else{
	instance_destroy();
	
}
