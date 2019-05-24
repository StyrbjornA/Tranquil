///@args (theme)

with (c_graphics){
	switch (argument[0]){
		case COLORTHEME.grey:
		themeColors[COLOR.darkR] = 0.1;
		themeColors[COLOR.darkG] = 0.1;
		themeColors[COLOR.darkB] = 0.1;
	
		themeColors[COLOR.lightR] = 0.8;
		themeColors[COLOR.lightG] = 0.8;
		themeColors[COLOR.lightB] = 0.8;
		break;
		case COLORTHEME.bw:
		themeColors[COLOR.darkR] = 0;
		themeColors[COLOR.darkG] = 0;
		themeColors[COLOR.darkB] = 0;
	
		themeColors[COLOR.lightR] = 1;
		themeColors[COLOR.lightG] = 1;
		themeColors[COLOR.lightB] = 1;
		break;
		case COLORTHEME.death:
		themeColors[COLOR.darkR] = 0.6;
		themeColors[COLOR.darkG] = 0;
		themeColors[COLOR.darkB] = 0;
	
		themeColors[COLOR.lightR] = 1.4;
		themeColors[COLOR.lightG] = 1.1;
		themeColors[COLOR.lightB] = 1.1;
		break;
	}
}


//var tile_id = layer_tilemap_get_id(layer_get_id("AutoTile"));
//tilemap_tileset(tile_id,tls_autoTile1);



