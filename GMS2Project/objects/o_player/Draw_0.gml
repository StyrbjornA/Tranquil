var dX = round(x);
var dY = round(y);
if (xSpeed != 0){
	facing = sign(xSpeed);
}
if (facing = -1){
	dX += 1;
}
shader_set(shd_whiteSprite);
draw_sprite_ext(sprite_index,image_index,dX+1,dY,facing,image_yscale,0,c_white,1);
draw_sprite_ext(sprite_index,image_index,dX-1,dY,facing,image_yscale,0,c_white,1);
draw_sprite_ext(sprite_index,image_index,dX,dY+1,facing,image_yscale,0,c_white,1);
draw_sprite_ext(sprite_index,image_index,dX,dY-1,facing,image_yscale,0,c_white,1);
shader_reset();
draw_sprite_ext(sprite_index,image_index,dX,dY,facing,image_yscale,0,c_white,1);