if (instance_number(c_controls) == 0){
	instance_create_layer(0,0,"Controllers",c_controls);
}
if (instance_number(c_graphics) == 0){
	instance_create_layer(0,0,"Controllers",c_graphics);
}

currentMenu = MENU.start;
menuOption = 0;
maxOption = 4;
