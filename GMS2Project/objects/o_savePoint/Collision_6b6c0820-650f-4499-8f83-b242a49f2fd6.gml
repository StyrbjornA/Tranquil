with (c_game){
	ds_map_replace(saveGame,"playerX",other.x+8);
	ds_map_replace(saveGame,"playerY",other.y+8);
	SaveGame();
}