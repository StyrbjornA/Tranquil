if (c_controls.controls[CTRL.startPressed]){
	switch (menuOption){
		case 0:
			file_delete("savegame.sav");	
			room_goto_next();
			
		break;
		case 1:
			
			currentMenu = MENU.start;
			menuOption = 0;
		break;
		
			
	}
}
if (c_controls.controls[CTRL.leftPressed]){
menuOption = max(menuOption-1,0);
}
if (c_controls.controls[CTRL.rightPressed]){
	menuOption = min(menuOption+1,1);
}

