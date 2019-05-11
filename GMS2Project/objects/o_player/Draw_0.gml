shader_set(shd_whiteSprite);
draw_sprite_ext(sprite_index,image_index,x+1,y,image_xscale,image_yscale,0,c_white,1);
draw_sprite_ext(sprite_index,image_index,x-1,y,image_xscale,image_yscale,0,c_white,1);
draw_sprite_ext(sprite_index,image_index,x,y+1,image_xscale,image_yscale,0,c_white,1);
draw_sprite_ext(sprite_index,image_index,x,y-1,image_xscale,image_yscale,0,c_white,1);
shader_reset();
draw_self();