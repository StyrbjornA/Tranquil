if (!file_exists("savegame.sav")){
	LoadGame();
}
ds_map_secure_save(global.saveGame,"savegame.sav");