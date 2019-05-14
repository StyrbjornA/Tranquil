if (!file_exists("savegame.sav")){
	SetupSave();
}
saveGame = ds_map_secure_load("savegame.sav");