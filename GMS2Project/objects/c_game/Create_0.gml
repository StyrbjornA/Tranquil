SetupEnums();
if (global.startingGame){
	LoadGame();
}

if (instance_number(c_controls) == 0){
	instance_create_layer(0,0,"Controllers",c_controls);
}
if (instance_number(c_graphics) == 0){
	instance_create_layer(0,0,"Controllers",c_graphics);
	c_graphics.flashCooldown = 5;
}
if (instance_number(c_camera) == 0){
	instance_create_layer(0,0,"Controllers",c_camera);
}
if (instance_number(o_player) == 0){
	var player = instance_create_layer(x,y,"Player",o_player);
	if (global.startingGame){
		player.x = ds_map_find_value(global.saveGame,"playerX");
		player.y = ds_map_find_value(global.saveGame,"playerY");
		player.playerPlaced = true;
	} 
	with (c_camera){
		x = floor(o_player.x/240)*240;
		y = floor(o_player.y/160)*160;
	}
}
global.startingGame = false;
