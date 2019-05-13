switch (particleType){
	case PARTICLE.whitepixel:
		draw_set_color(c_white);
		var particleX = x + wavelengthX * cos((life)/10+waveSeed);
		draw_point(particleX,y);
	break;
}