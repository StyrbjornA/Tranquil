if (spinCooldown == 0){
	with (c_game){
		ds_map_replace(saveGame,"playerX",other.x+8);
		ds_map_replace(saveGame,"playerY",other.y+8);
		SaveGame();
	
	}
	spinCooldown = 20;
	sprite_index = s_savePointSpin;
	image_index = 0;
	c_graphics.flashCooldown = 2;
}