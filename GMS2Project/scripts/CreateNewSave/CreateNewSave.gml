ds_map_replace(global.saveGame,"playerX",x);
ds_map_replace(global.saveGame,"playerY",y);
ds_map_replace(global.saveGame,"playerArea",asset_get_index("r_startArea"));
ds_map_secure_save(global.saveGame,"savegame.sav");