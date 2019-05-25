
if (flashCooldown > 0){
	flashCooldown --;
	draw_set_color(c_white);
	draw_rectangle(c_camera.x,c_camera.y,c_camera.x+window_width,c_camera.y+window_height,0);
}
with (o_player){
	switch (playerState){
		case PLAYERSTATE.dead:
		if (c_graphics.themeColors[COLOR.darkR] < 0.2){
			DrawDialogBox("YOU DIED!#Press R to restart#the game#",c_camera.x+c_graphics.window_width/2,c_camera.y+c_graphics.window_height/2,ALIGNMENT.center);
		}
		break;
	}
}
with (o_NPC){
	if (displayDialog){
		DrawDialogBox(npcDialog,x,y-32,ALIGNMENT.center);
	}
}