if (flashCooldown > 0){
	flashCooldown --;
	draw_set_color(c_white);
	draw_rectangle(c_camera.x,c_camera.y,c_camera.x+window_width,c_camera.y+window_height,0);
	
}

surface_resize(application_surface,window_width, window_height);
draw_surface_ext(application_surface,0,0,window_scale,window_scale,0,c_white,1);
