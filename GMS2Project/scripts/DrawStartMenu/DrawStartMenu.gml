draw_sprite(s_titleLogo,0,room_width/2-sprite_get_width(s_titleLogo)/2,room_height/2-sprite_get_height(s_titleLogo));

var menuX = room_width/2;
var menuY = room_height/2;

var optionIndex = 0;
if (file_exists("savegame.sav")){
	DrawText("Continue",menuX,menuY + optionIndex*10,ALIGNMENT.left);
	optionIndex ++;
}
DrawText("New Game",menuX,menuY+optionIndex*10,ALIGNMENT.left);
optionIndex ++;
DrawText("Options",menuX,menuY+optionIndex*10,ALIGNMENT.left);
optionIndex ++;
DrawText("Quit Game",menuX,menuY+optionIndex*10,ALIGNMENT.left);


var arrowFrame = ((current_time/100) mod 4);
draw_sprite(s_menuArrow,arrowFrame,menuX - 12,menuY+10*menuOption);

