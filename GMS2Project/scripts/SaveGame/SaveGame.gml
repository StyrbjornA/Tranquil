if (!file_exists("savegame.sav")){
	SetupSave();
}
ds_map_secure_save(saveGame,"savegame.sav");