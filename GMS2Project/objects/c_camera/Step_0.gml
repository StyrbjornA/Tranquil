goalX = floor(o_player.x/240)*240;
goalY = floor(o_player.y/160)*160;



x = lerp(x,goalX,0.15);
y = lerp(y,goalY,0.15);

if (abs(x-goalX) > 1 || abs(y-goalY) > 1){
	with (o_spawner){
		if (mySpawn == -1){
			canSpawn = true;
		}
	}
	o_player.playerState = PLAYERSTATE.areaSwitch;
	
} else{
	if (o_player.playerState = PLAYERSTATE.areaSwitch){
		o_player.playerState = PLAYERSTATE.standing;
		
	}
}

camera_set_view_pos(view_camera[0],x,y);



instance_deactivate_layer(layer_get_id("Actives"));
instance_activate_region(x,y,c_graphics.window_width,c_graphics.window_height,true);
