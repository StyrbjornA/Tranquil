if (flashCooldown > 0){
	flashCooldown --;
	draw_set_color(c_white);
	draw_rectangle(c_camera.x,c_camera.y,c_camera.x+window_width,c_camera.y+window_height,0);
}