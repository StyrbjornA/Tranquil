if (file_exists("savegame.sav")){
	if (c_controls.controls[CTRL.startPressed]){
		switch (menuOption){
			case 0:
				room_goto_next();
			break;
			case 1:
				currentMenu = MENU.newgame;
				menuOption = 0;
			break;
			case 2:
				currentMenu = MENU.options;
				menuOption = 0;
			break;
			case 3:
				game_end();
			break;
		}
	}
	if (c_controls.controls[CTRL.upPressed]){
	menuOption = max(menuOption-1,0);
	}
	if (c_controls.controls[CTRL.downPressed]){
		menuOption = min(menuOption+1,3);
	}
} else{
	if (c_controls.controls[CTRL.startPressed]){
		switch (menuOption){
			case 0:
				room_goto_next();
			break;
			case 1:
				currentMenu = MENU.options;
				menuOption = 0;
			break;
			case 2:
				game_end();
			break;
			
		}
	}
	if (c_controls.controls[CTRL.upPressed]){
	menuOption = max(menuOption-1,0);
	}
	if (c_controls.controls[CTRL.downPressed]){
		menuOption = min(menuOption+1,2);
	}
}
