if (irandom(2) == 0){
	var saveParticle = instance_create_layer(x+4+irandom(8),y+16,"Actives",o_particle);
	saveParticle.ySpeed = -0.01;
	saveParticle.yAcc = -0.02;
	saveParticle.flashing = true;
	saveParticle.life = 30+random(20);
	saveParticle.wavelengthX = irandom(7);
}
