if (spinCooldown == 0){
	with (c_game){
		ds_map_replace(global.saveGame,"playerX",other.x+8);
		ds_map_replace(global.saveGame,"playerY",other.y+8);
		ds_map_replace(global.saveGame,"playerArea",room);
		SaveGame();
	
	}
	spinCooldown = 20;
	sprite_index = s_savePointSpin;
	image_index = 0;
	c_graphics.flashCooldown = 2;
}