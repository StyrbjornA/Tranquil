SetupEnums();

if (instance_number(c_controls) == 0){
	instance_create_layer(0,0,"Controllers",c_controls);
}
if (instance_number(c_graphics) == 0){
	instance_create_layer(0,0,"Controllers",c_graphics);
}
if (instance_number(c_camera) == 0){
	instance_create_layer(0,0,"Controllers",c_camera);
}
if (instance_number(o_player) == 0){
	instance_create_layer(x,y,"Player",o_player);
}