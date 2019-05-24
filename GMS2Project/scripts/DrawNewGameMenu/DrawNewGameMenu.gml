var menuX = room_width/2;
var menuY = room_height/2-20;

var optionIndex = 0;

var confirmText = "This will delete your current progress!";
var textWidth = 0;

for (var char = 0;char < string_length(confirmText);char++){
	textWidth += GetCharacterWidth(string_char_at(confirmText,char)) + 1; 
}
DrawText(confirmText,menuX-textWidth/2,menuY+optionIndex*10);
optionIndex ++;

var confirmText = "Start a new game?";
var textWidth = 0;

for (var char = 0;char < string_length(confirmText);char++){
	textWidth += GetCharacterWidth(string_char_at(confirmText,char)) + 1; 
}
DrawText(confirmText,menuX-textWidth/2,menuY+optionIndex*10);
optionIndex ++;

DrawText("Yes",menuX-30,menuY+30);
DrawText("No",menuX+20,menuY+30);
var arrowFrame = ((current_time/100) mod 4);
switch (menuOption){
	case 0:
		draw_sprite(s_menuArrow,arrowFrame,menuX - 30 - 12,menuY+30);
	break;
	case 1:
		draw_sprite(s_menuArrow,arrowFrame,menuX + 20 - 12,menuY+30);
	break;
	
}

