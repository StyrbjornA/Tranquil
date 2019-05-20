if (!playerPlaced){
	
	with (o_teleporter){
		if (teleporterID == global.goalTeleporter){
			other.x = x;
			other.y = y;
		}
	}
	with (c_camera){
		x = floor(o_player.x/240)*240;
		y = floor(o_player.y/160)*160;
	}
	if (global.goalSide == 0){
		x -=8;
	} else{
		x +=24;
	}
	playerPlaced = true;
	
}
//handle player movement
grounded = false;
switch (playerState){
	case PLAYERSTATE.standing:
		PlayerStanding();
	break;
	case PLAYERSTATE.jumping:
		PlayerJumping();
	break;
	case PLAYERSTATE.running:
		PlayerRunning();
	break;
	case PLAYERSTATE.falling:
		PlayerFalling();
	break;
	case PLAYERSTATE.areaSwitch:
	break;
}
//handle player animation

switch (playerState){
	case PLAYERSTATE.standing:
		image_speed = 1;
		sprite_index = s_playerStand;
	break;
	case PLAYERSTATE.jumping:
			if (sprite_index != s_playerJump){
				
				image_index = 0;
			}
			image_speed = 1;
			sprite_index = s_playerJump;
	break;
	case PLAYERSTATE.running:
		if (abs (xSpeed) > 0.5){
			if (sprite_index != s_playerRun){
				image_index = 0;
			}
			image_speed = 1;
			sprite_index = s_playerRun;
		}
	break;
	case PLAYERSTATE.falling:
		if (sprite_index != s_playerFall){
				image_index = 0;
			}
			image_speed = 1;
			sprite_index = s_playerFall;
		
	break;
	case PLAYERSTATE.areaSwitch:
		image_speed = 0;
	break;
}
