if (!file_exists("savegame.sav")){
	CreateNewSave();
}
saveGame = ds_map_secure_load("savegame.sav");