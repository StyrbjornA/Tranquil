saveKey = GetSaveKey();
if (ds_map_find_value(global.saveGame,saveKey) == 1){
	instance_destroy();
}