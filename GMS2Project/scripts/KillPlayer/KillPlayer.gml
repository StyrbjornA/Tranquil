o_player.playerState = PLAYERSTATE.dead;
with (o_player){
	for (var splatter = 0; splatter < 40;splatter++){
		var newSplatter = instance_create_layer(x,y,"Actives",o_particle);
		newSplatter.ySpeed = 0.2-random(3)+random(ySpeed);
		newSplatter.xSpeed = -1+random(2)+random(xSpeed);
		newSplatter.yAcc = 0.02+random(0.04);
		newSplatter.flashing = false;
		newSplatter.bounceOnTile = 1+irandom(3);
		newSplatter.bounceX = true;
		newSplatter.bounceY = true;
	}
	var playerSkull = instance_create_layer(x,y-4,"Actives",o_particle);
	playerSkull.ySpeed = ySpeed;
	playerSkull.xSpeed = xSpeed;
	playerSkull.yAcc = 0.2;
	playerSkull.flashing = false;
	playerSkull.bounceOnTile = 5;
	playerSkull.sprite_index = s_playerSkull;
	playerSkull.particleType = PARTICLE.sprite;
	playerSkull.destroyAfterBounce = false;
	playerSkull.rotationSpeed = -5+random(10);
	playerSkull.depth = depth - 500;
	playerSkull.bounceX = true;
	playerSkull.bounceY = true;
}