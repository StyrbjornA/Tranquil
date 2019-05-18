if (!file_exists("savegame.sav")){
	CreateNewSave();
}
global.saveGame = ds_map_secure_load("savegame.sav");