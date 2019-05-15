if (spinCooldown > 0){
	spinCooldown --;
	image_speed = 1 + spinCooldown/3;
	var saveParticle = instance_create_layer(x+4+irandom(8),y+8-irandom(8),"Actives",o_particle);
	saveParticle.ySpeed = 0.01;
	saveParticle.yAcc = 0.02;
	saveParticle.flashing = true;
	saveParticle.life = 30+random(20);
	saveParticle.wavelengthX = irandom(7);
	saveParticle.depth = depth - 1;
	
} else if (image_index > 15.5){
	image_speed = 1;
	sprite_index = s_savePoint;
}