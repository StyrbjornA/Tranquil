//handle player movement
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
}
//handle player animation

switch (playerState){
	case PLAYERSTATE.standing:
		sprite_index = s_playerStand;
	break;
	case PLAYERSTATE.jumping:
			if (sprite_index != s_playerJump){
				image_index = 0;
			}
			sprite_index = s_playerJump;
	break;
	case PLAYERSTATE.running:
		if (abs (xSpeed) > 0.5){
			if (sprite_index != s_playerRun){
				image_index = 0;
			}
			sprite_index = s_playerRun;
		}
	break;
	case PLAYERSTATE.falling:
		if (sprite_index != s_playerFall){
				image_index = 0;
			}
			sprite_index = s_playerFall;
		
	break;
}
