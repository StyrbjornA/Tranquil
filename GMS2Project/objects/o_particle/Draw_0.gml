switch (particleType){
	case PARTICLE.whitepixel:
		draw_set_color(c_white);
		var particleX = x + wavelengthX * cos((life)/10+waveSeed);
		draw_point(particleX,y);
	break;
	case PARTICLE.sprite:
		draw_sprite_ext(sprite_index,image_index,x,y,image_xscale,image_yscale,rotationAngle,c_white,1);
	break;
}