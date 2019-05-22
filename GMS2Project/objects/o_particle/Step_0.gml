if (life > 0){
	life --;
	if (life <= 0){
		instance_destroy();
	}
}

xSpeed += xAcc;
x += xSpeed;
if (bounceOnTile > 0 && instance_place(x,y,o_tile) && bounceX){
	rotationSpeed = -5+random(10);
	x -= xSpeed;
	xSpeed = -xSpeed*.7;
	bounceOnTile--;
	if (bounceOnTile == 0 && destroyAfterBounce){
		instance_destroy();
	}
}

ySpeed += yAcc;
y += ySpeed;
if (bounceOnTile > 0 && instance_place(x,y,o_tile) && bounceY){
	rotationSpeed = -5+random(10);
	y -= ySpeed;
	ySpeed = -ySpeed*.7;
	bounceOnTile--;
	if (bounceOnTile == 0 && destroyAfterBounce){
		instance_destroy();
	}
}
if (flashing){
	if (visible){
		visible = false;
	} else{
		visible = true;
	}
}

rotationAngle += rotationSpeed;

if (destroyOutsideScreen && !CheckOnScreen()){
	
	instance_destroy();
}


